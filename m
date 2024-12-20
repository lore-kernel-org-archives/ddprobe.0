Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270ED13B58D
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734677154; cv=none; b=f/ZhHgaMQ9XrEjyb44UGFR9KhUShRenD1+CRhRuUwQZn7CofSGPIZaByzsPIABXR2mpSsmL+PkrXLyivI2FTgc4N/Fu9hODtRUNXBZVtaT5LfcmzlD70cGM3sgBVM7U/qTc174ExxvoR4rB9LNx+MQFmNOUzkY2mEFkybhmuuVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734677154; c=relaxed/simple;
	bh=ms0tHO6dFLT8bNL/ehwZosTgPxBjpRxjVMqJ7dRqsoI=;
	h=To:Subject:From:Message-Id:Date; b=Y1uhtGUrptg9VWUM/MM8bPKb+OsYgfiYx+J/VXeZ7sYCZKIK8DNIgg17DbfdMVQnGjma0cP78C+SIIhx70K66wsDjibawdxrRHMecAass7AliqosIQXklWgdIpFAhe5zNQPcbYNW4lSkIwzJQDOT2k6hn7sREYpgn18nr10wXfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcK1yJBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcK1yJBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA415C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734677153;
	bh=ms0tHO6dFLT8bNL/ehwZosTgPxBjpRxjVMqJ7dRqsoI=;
	h=To:Subject:From:Date:From;
	b=tcK1yJBOEgpsPt0PkZQETBfqeBbvYdq+dpOjYbOwMyHyAZ/OLAnUttt8rt4smN1vR
	 S1+eAVYZQVbT5sr2Am0Sb0IqfCpfsNjhkhLH6O0cKUDPOlmlsCbTYhKrtvBwnlnbWS
	 jGoq08xIdAb8RPBoBqJrMAL2NjQXRAqX7MzQGPic+hRrsZ+ZLURYIe+aPHi6b6/eiq
	 C9SHk41feyv4o7ikswQqWS1FRlwRfDVFsjncui5QGmthIuZSiTs8RdPTZFh1lsx7YX
	 1lEC9DtncxrZngaj1sk/7jwJFRQrwxsgV8hvY73iJztji5mvx+Alge1YTPlgAOx6O6
	 5A7573WEV52sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5BE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173467715359.28115.12538026847737893379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8669b5de0ea1201c003dae12f1440323fc5fe778a9bf3369ba376e9fe7129682
Date: Fri, 20 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734677153
