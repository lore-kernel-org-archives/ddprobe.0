Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E14144309
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719241343; cv=none; b=MOy0GocAxEr/CdmyCgcpY9jIyZ0ocng/caOE+FQuLqS/WzE3yEamRbZ8cplN7MMaTvFDREqcPANA7tdwzM1DF6UI/ELMqB5Vw5U4bJIOp3BJepxrp4rDLfqp0vPgg+6wG8v/Z5tPCN8KkH/Pm5/qEkcHNxw/eShskogI8PDamsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719241343; c=relaxed/simple;
	bh=JLTdtDJaYEQpKk+YLDy8NDtRMp3O9aCMdRGk+jQlntM=;
	h=To:Subject:From:Message-Id:Date; b=UqrUMxslo4FLcOPTEqxdBlpaoHHdDDgbz8UoTK6nyIumE1ul6zohxXhUW6Gm/SF9Zh9Y8bmLyv86UZQgaMMB/HQyhI+hHCkNL0FUCnQq7o6wQot8DnONGLuwnF5GYmWFxhXnqXo+qdNBOCYGFB0X9m+uhR5VPv16qliFznLA7/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhey83No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhey83No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7995C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719241342;
	bh=JLTdtDJaYEQpKk+YLDy8NDtRMp3O9aCMdRGk+jQlntM=;
	h=To:Subject:From:Date:From;
	b=fhey83NomniSlPtSapc31AKxJgy57BRnX226zufMg1MzzZcpOsJfij/40Z/s0tez1
	 WL2+IXDUOkc0EfZxDAD6GClBrsntuqA6lHhqymIb2dgR6v6Jdkd4oRw4g7L9DaU5to
	 348AnO+CStwTP+CXo4j+cJHy/Uh+PyVkc05AneHmXzBtkI0lEPA9ut7QgQONuY1WSi
	 qr8M51f+1g/7+0VbVevXT83+GM6nwY7xA7oQ2MOg7ZwyfIpu2FARJJbr30JnT+d+5A
	 9G9l920aCEYy/1E+P+HNJSJ3kQk8oXn531riIT1Furp/kYkeqAWRQNJnwKbglCkxJs
	 yC/DlKNIOVC7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12FEC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924134278.22102.12623320463525567637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5405cd540e2ea9c0e6a9018ab8613daf9f54613b718b33489b682c97be0dae8
Date: Mon, 24 Jun 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719241342
