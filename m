Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438AE335BA
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741121934; cv=none; b=GN0CC1ZHMiNAy/Chf+iRTWNBjJbPGmnNK1m+daOQ6cRsP1+cHK4omie8hQqblD1CKgEaFZeeU+vAFNswsGAiUV5yyCp4/wC5SdLz1++LM8RCftCkfgfsKXBz0bI02CNsNEAfgu2aa/qdYqOtjOl2ZA2213NNtsa5ZYNwzMZUtfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741121934; c=relaxed/simple;
	bh=ey/tWTbu9ge+rDkigtYW5FZih5WhlGu5cZVB1rpBLV4=;
	h=To:Subject:From:Message-Id:Date; b=bfNxBoiIWR1d2/XPKMXWz+APLGuhm408oFt/X6u31PAYOHm92b9rG9vHIV7aQRfva9xkgmFjk+UDSsHCVYpXx7k4tLWTpRswE3Bh23JSt+9Y9C5PB36h95yvl1oaSllrBkJWLmHO4iIVP4mKXViBEtuhF04m/bhoBSoQzFdzstc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMZsyU7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMZsyU7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B805DC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741121933;
	bh=ey/tWTbu9ge+rDkigtYW5FZih5WhlGu5cZVB1rpBLV4=;
	h=To:Subject:From:Date:From;
	b=fMZsyU7Tlra/CP6cJk4d/xjs0H1u1wXhYlHH7yo7S8FCbQl3pFGOfhxe8HBUdiX8W
	 rIburNT/SNcFwL0NSF2zcTm7z23PTcUt8VN34mQgpnFnW5JfLfn+jyx6/CtyOaVIkY
	 +7e6+cZZRSxM5mhVC5F5gg4P5yK7QnvypZn2GzFYIMPddh6mrXOn7ISPg7OhG985tV
	 LdAOZXwrJ777MSHe6iV2Xc51TgN+Fuw7uKrPW+PSF+Sxpj7upEYud5uuCULbEufpeH
	 cl6qNoOunrf8Rywk7+XeDORrbfbsfAGW3Bqpcjo8PfyBztcH9BeZ94S0RZyNvGXT+J
	 boCxKXAMg+cSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEA5C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112193361.24782.14865977995431348634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5ca1e0a7f4a6fd17d3d172817c4b7ed0a52235b969fcf65d46fb98c73a8d46
Date: Tue, 04 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741121933
