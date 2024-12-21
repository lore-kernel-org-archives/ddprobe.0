Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F95BAF0
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734807354; cv=none; b=OC2fPigxGFhk71JYFi0USlPCA8JB2BsEC0Jt0EogX6U7i8AKZ8Qr6PlPZkGIQygl91ooAhCSm788OD3grck3Hp6zLQbbOjo7cLt0RLex2rQpzhPCLc83laFdKNTPrxeO4pHGRLjYZ16RhwEwGvB4sM8Lo0cL1N6z+7QULMyW1Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734807354; c=relaxed/simple;
	bh=7EqTckEjIKi+jY7kmf1U8vi2oTzSPcy94sqzrPp9rJs=;
	h=To:Subject:From:Message-Id:Date; b=fz2t+D20xemiewiwbUIh9xYC/AftwK1nXf9W72ZpuxWOSkUr7TIzo1d+sa5NikhJxh84qiOImfg/jWObLrLCXOlamq9Ejn08vAAnKhXCkElNuCPRgNqRKrzUU6QyYclD2CrCIn8urWAkF3PW0MFRHQ7Z7l+JDVE29YZHxnFuoPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKb8LDA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKb8LDA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD47EC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734807353;
	bh=7EqTckEjIKi+jY7kmf1U8vi2oTzSPcy94sqzrPp9rJs=;
	h=To:Subject:From:Date:From;
	b=oKb8LDA2SpnftOAQTMwfszl9i+9Uk2LWzloF5zoOkt3OdWX/SfafJ4wi5gVPA8Kwm
	 R9HdPV+3oYYLF40J3YJw5lSbcpsgVU+ZuI4Zsqd4vJM7EPj4ilqkhJLGNdcCbqMQmp
	 cBVneYWMgZKWm5bDdqSd17GdPUmxtX8JlHnS3IzPx9Zo9lkC77xy6eLzoE5C8gZjfI
	 cKziZxw1r3+s+F2IKuSmxgGzJBxGRu8zR/kWIIlsHvGh/J6KmIBcg3bekc8kfFVupe
	 A3TkDixwfkJaA3Va2mx9e3x5np6PPZBH3l4YpqExh3YmP7WgpcqlByruNRqKrkD75d
	 e1eeVWWtZiE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9404BE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173480735358.3936.7879164634543441459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ff702fd01cd817659f327c7399c5b2309e910482415a4a54f30b60df9253aa
Date: Sat, 21 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734807353
