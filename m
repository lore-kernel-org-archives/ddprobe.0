Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109571757D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722578754; cv=none; b=MAATY0eXa9OF61UAwyxQvDfBXV2f+hLbU33qdOJzpWDamoCV03M9b6g1nMrGWbV5CsJcvRmZwsxmwMaw/b8Zr4Np4negTYt16p7wmMxSttw9l1SK14DMlBsex1LfLAEh0tNOpnHgPxj7f3GMk/pdkc7sHxUb2sOVsTiGaQc+SSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722578754; c=relaxed/simple;
	bh=cnMhg59D2XGqeAB+54eFTKX2fGE9O11At2hFwmFvbS0=;
	h=To:Subject:From:Message-Id:Date; b=n/PeL5vsjniasKoJMvVvh5c3z5mWEhCq03TQNG7m6gYvQyHaawxcOYnAe9sAuR9g9wOn49qUdU1a94DAXGW+Cblxb/Doqzdeb8ZTXy3D6BSLVFnKI6avcC7Uf0S3EkM5/m5AnUKS0TYwLhgm9+kZCfH6rQ/zO/xlNf+rup9EVcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGp19Umj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGp19Umj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6363C4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722578753;
	bh=cnMhg59D2XGqeAB+54eFTKX2fGE9O11At2hFwmFvbS0=;
	h=To:Subject:From:Date:From;
	b=VGp19UmjhBROVIP7xYsHbassE8MBkEkd9osaw/Neh+Uk3BpkTP8QB0rqeUwq61s/Z
	 1qgWJKiaprzrSmNp/N8F0Sc97iUH3jn/gFwdOp6YaYjDZ0VAY8oY35fHeEXY4rfhvZ
	 mpHiN2fs5FK9FkC8I83j0eaP/RDO1TusWuGbYYcboVOn1fuCosiI8uC5RnHhr69FXe
	 E82RiW0F3LOsLxCMG3HwmKvsAaTFgwNS+JHFhkCC7LgYPb3SpDu3lcSYwvKvq6pG/n
	 DLWPR1CwZYMUiR+LfQCtMIb+BWBpZ+/LG7rXoYDTae2tJEnXijCGaEI42Z2/CuO53H
	 L3eWfRb/ARCVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FEDC3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257875360.17782.16783958891692641300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfd4e94b9c4a6cc24c337fa23cda88f108461e3c040815b385a8b5bc4edbf91
Date: Fri, 02 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722578753
