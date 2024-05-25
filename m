Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581AC15A4
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 02:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716603203; cv=none; b=h7WE7xSEijmIpeI6NnJWneyto/TfDc93c15XQYTnGlXbzR/etG1oqu2Iv2YUQoO4nJcpnOSuD5mq2cUJ6/ZyTAn33SEp8C7ggAkfrU0g+3TXpt8yVOCsR+LTPdYffBqRH2SE8i1s7dciF2FFwcSbL/UM0fNsQwoxewFXMkiTPe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716603203; c=relaxed/simple;
	bh=sXXt0UBodw7I6fEZkPeyJvSr89zOjgKldmc+Sjqcomw=;
	h=To:Subject:From:Message-Id:Date; b=KXh4pceAfpvwKlyTqnCYHZiNaNC0lyBjRPIY56EVDWDWnVctm6Q83QLEGssgBEtwinmEfHMuV4b0EtAyNT9fr8VrwTqeWkBNj9d/iNVx7aJ6lFbRw/3S73sBlr4oOj/IOIfMcUQJxnmcJ9MTHKucD6tEOd18V3YNhFTh2u203QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmmgtRbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmmgtRbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0691C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 02:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716603202;
	bh=sXXt0UBodw7I6fEZkPeyJvSr89zOjgKldmc+Sjqcomw=;
	h=To:Subject:From:Date:From;
	b=JmmgtRbCU8FDsmgwVIwMpBv3d+MFCw0rVR3aGdSUMAFxGzCA7nIdDWQ2BEkA4nwtg
	 I6maLJ6BGqGUnmxkpfDy2Js6acxOgYJVMedTvisZJISbYD1FUFrdzMEhfjoaGgS/Ve
	 VmK1lNDxekmyGAj68Pa0eIQoQiD8Aa3URdSlId6nyZ8Qbinafw1NMcL06drnmu0nDj
	 UoHbF/sOLu7Ik+YBlyNcWqdiOQaNyeMUqmq0uT5+WWn+dxFYdFH3ynIGsARLysraFu
	 OGsrZbiAcnz+sUKFeBfg5gFIH2igtjmb8AjBjASUmBZKoyCmKm8xAEf4bDlgEmzT4I
	 9mhLtGN8k+5ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68C0C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 02:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660320278.28257.7616717243353953950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43383a1cbbca68404ad6071b46d8ef3701d027bf26276438a337f76a360c498a
Date: Sat, 25 May 2024 02:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716603202
