Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A7526136C
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740416334; cv=none; b=nYrcPyjLNWupGcIMOFDZmHnaXarI5ArkJ0JEyl0t8eS53BwaG4ao4lRoQmaxzuf8R2AOldTPPm7jWSuscaSEbWSuAorXR/WRG/95dbH1lJg6AnkfihWdZYhRy39ddexQFcJbELup3Pt4QIvWatTJ8vymWhVmAleGAgme+9eURW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740416334; c=relaxed/simple;
	bh=I+Qvi4kcba5qRzmXaltUIQnY4NF6So25dpu1UjWyWWc=;
	h=To:Subject:From:Message-Id:Date; b=WIWLwj9/6z2vHDukEPPiUoe0JdLZPkvv7FVKKMKe7mQWyEtUouJS/t6CMs9w1iNnem4OVXllLRjZukVyAtxCscefC/AlxYLVNvhnrqtuVWGVmwfGhyaCHRTkPbw7XCH3yDLPa73J5PiPqwFCc6d5zCW4I/IgvF9S0Fha8HfPlVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlfCP5cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlfCP5cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81A1C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740416333;
	bh=I+Qvi4kcba5qRzmXaltUIQnY4NF6So25dpu1UjWyWWc=;
	h=To:Subject:From:Date:From;
	b=jlfCP5cp3K1v9LqGrJJBVXHSEO5U1E5jMfGD0C6RBRDQgVxsNCdYN+HMfgA2Mvp+I
	 wiKVRggRW4wF0Cy6gF26bhZ5P+b29umwcQ8ipxX7aRicE5dL6Yg357fy4K7ax4h69q
	 afWqFNYAM99VTedKAIwp0C65xRmRsq/lvU+/1LnviI7I0MyVR1IxUgd2wxVIBOfvwy
	 D77+RNIDf2nTCAvuuFVTOGpwamT88KobjUHeIe8l7iREdT6wYylERlCXvheogQVoDc
	 Ljz94/70o7a/+umK8P4Xjn5OJgUoXlIUprfJSUBHqfbH8/7cvtWZWvluRg0OMfi8nM
	 TZFLtpG+zZiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ECDC021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174041633360.2786.12053325527363101507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bc0982d05de1aa4565445c7692d893557415fc0fcd352a2c81feca94f572f9
Date: Mon, 24 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740416333
