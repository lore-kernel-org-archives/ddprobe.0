Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEE778F35
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739626134; cv=none; b=e27MpILQ+ef2KDw/y9hE84lzLSTj0cXS0JPbxgwpFkN2Qneo12ytaIcFGmFH20/9A7LZkUs/1C4gceSd1mHEW/Ay1SRx5Kb+oJ47gBMrrmHG9Zw9rnpMQRbswDlBy7jfXJGb0QjWNYcs9HwFLDRrjj3vnwqD5VUJ4MSmu3Lm8XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739626134; c=relaxed/simple;
	bh=TPz454p3r0hghm3eJuEYhpBNmkUKYMs22JZTIU4OCGU=;
	h=To:Subject:From:Message-Id:Date; b=NnAEqr9BHGUWsRMnrk9qRGVxjkxWon2h4swExLauddK3mgUVwCP0OtHIeig8N3BWJ5GW7Bq3GCpZQdSUX78LEh6hvLH2LAsxVvUV7P8xC62Vs9Wj6lJjlx4xI3VKgSuNubu0/FoEHxVd6iO2WF554BluUeCbZltGkGmePelOvv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckQXuweJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckQXuweJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0384C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739626133;
	bh=TPz454p3r0hghm3eJuEYhpBNmkUKYMs22JZTIU4OCGU=;
	h=To:Subject:From:Date:From;
	b=ckQXuweJEs68GgNv4MprEBIc4ziQ/3IPUwZyCGm55Cb3kxRMoWkgUjC3Z+OR5QJqB
	 H49B4h2Udacx54j+Z0YCi6AJQg6yQQWpt6aOUoUgWNcMmheWvB2qPom6tTuoFjUqDL
	 CFiDoOv8l2ujg5bF85L3kC0aXOAlWXa55SN9CoyS765Ghb3AGETViwWOabguj2+ckz
	 4tXnlBZ9HIYHgjyCxe7544/Wq3SZuilxOJu9yASMNj1YK+V3OMDoYvCUmMCjlEoXnA
	 rnyIRxM02/eWnVVovGav/4GZaHaEk+bGVfq25vQwybYArsUn/oEQWLDqx39isShKdu
	 8auGPB1ZVmboQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A821EC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173962613364.31452.17404153419351740076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67026b192e566bea3f8b3cb63b21ea3b533c141c9a005026a8b9632fe8d6cdff
Date: Sat, 15 Feb 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739626133
