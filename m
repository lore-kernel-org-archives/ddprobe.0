Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE4C154C12
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739879335; cv=none; b=Cvb9AvgzB5kbRQUisxX5Qb9FnmkC8FoQmPc2lrBUAMeJDguVPwQvvXyCxgGNnDZyJBZMGsUcnUpoyF0YJ6TXInsS3kuJWJsVbxaksIeKzW2Rs+hP52/Cjpijyu7KcnVX+HNDCIwtD/zY8sc5FRJCR677vBsydZ2xzWXkfRF/HNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739879335; c=relaxed/simple;
	bh=IeVUL7wpoFpKpELxt01yt7TQlVNv+XS+CoXz4pUAv3c=;
	h=To:Subject:From:Message-Id:Date; b=HsgIptN8URTfROkJo+e672yNd6fEDAoHIdVsOCZDrPCVCnLWVGvxMu+eCYVGhH2FFI4D1J2cYzyZ8EBOHoPHihK45s4PzePbDdD+i1S8GYsMoar5PE05L9aDCKh0kcDHjpYygyalp8fVd5CpHvcemJZje7BZRsFBL+WPJEiem5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRvzV3ZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRvzV3ZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB6CC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739879333;
	bh=IeVUL7wpoFpKpELxt01yt7TQlVNv+XS+CoXz4pUAv3c=;
	h=To:Subject:From:Date:From;
	b=IRvzV3ZJrwMTtkvlV1G3hDz3iC88b9HGFgPo5IXSUJGPa/DWQxFzjNdYi5DkQbfco
	 vip6G4bxef2X3vqRhvJbDwnwQHcZFDttoR2Uns8zYAr9pCV6vnVvrdHBVvUUjuKiuj
	 ti413edysQ0mcTEXZej/GdzJi6Ih4VDLxOz9OVNt8ub/Y4UCMvQNU4fYqXBcN29QpT
	 Lw0DpP8jqs9oamapt1jA3FK2uoTf1DWGOls6PeUx6+lsO0zzD7TeNmwmZ3dUelz6L4
	 JXhzlgUit6/YAuQkVu3CFSnvUvnyheTojApNEcGoVVfe0C37M6xKexRyK4iWl4NQEN
	 yc5NWH64//18g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9836FC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173987933361.10563.4824175922936552169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8effb77104316d13fb6d3859a1412225c11fa5d1555931c96fedd2aeaf398a1d
Date: Tue, 18 Feb 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739879333
