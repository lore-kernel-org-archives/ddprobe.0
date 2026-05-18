Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDFD24293C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779121834; cv=none; b=UONw1hGcO258sYBMJY77/Mf7aa6AJxYxNxg8lrZmT91KAGbONP5umHpGskjNuFcVeK0Ud+lbGRrx9+9hMAksuOxH+1NQ7ptJf/0LNoCJn5rKDhSftdpyGA8R7l3IsEVI+s0zlfe2D968gg/Q2lamT8zQyMpLb2XQJWsihd9n/ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779121834; c=relaxed/simple;
	bh=0lcWTZVHXdZ9xZkqtGdZVBIMMnwYXx2FZUgL5W/ShRk=;
	h=To:Subject:From:Message-Id:Date; b=RGZUcJmkM+WIwYDo74FTuLdi+2NEFETkntfhQ83DZl0BLgjjyPP1+zSsfH+Gvvit3etACCAJRlp/kdjVv9QZX02v3sWuXVmCdke/pLKhS/dPt4qzo6bVtkpgPp7+V5aLaNjDEoILRLmx5PqfN0ARjwBgr5iHZzymTE0BDMI03Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehMip4IU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehMip4IU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5ACC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779121833;
	bh=0lcWTZVHXdZ9xZkqtGdZVBIMMnwYXx2FZUgL5W/ShRk=;
	h=To:Subject:From:Date:From;
	b=ehMip4IUJhz7x0s03XUgNCxfTs1HnUFHRPhI9nINqvvXzwFNtEQmLQqpRovD5QomW
	 s7xBoefI6XfKG8XmFcVUJooKxdWk6TcoyKMC/tTFpoDUQ8sRhu8CgOZxiZYted7TzN
	 qqJ5I4p+VZ3LohNSDe7PowAxP3hcAcHfIhyFsjfdj/mNiOmMYMWz4TjwZnVSdynirZ
	 vqoSUN8irIUbATudVOqOq9mIB65wuqu5a3XYwUIZBC95/1q2NBJyQCBhs1RbMsodav
	 CSYsDXwyqsPiGt/tHzVgEuSOjrcK3j+pxyE44FpP2SIQUDmLHB9y8H4FNSOgkvCsqV
	 V+Emp/V5pgeZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F72CD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912183371.12363.7486941639370569794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70ef2279c710fbd393bdba698b54085bdbedc3cbbfb60bd71e544430ce2e958
Date: Mon, 18 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779121833
