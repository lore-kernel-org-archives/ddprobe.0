Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4885B4B0486
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786188634; cv=none; b=kwtsrWH+fmV75fLO9NoHxaX3DyXRYzvdaP8jqihuvUO5BDlJXVRFvjlVRk1lXBUQ1DQ5cV21+QY2fgc6xOAqyZH8/Njd7Y1S2de2YLHCSqEfQLNy66kEbDXBZXRWGx6DCGkT2ix0ek3G7FFIE0RyAT2G7ttSnNiYMwPv5wTKFUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786188634; c=relaxed/simple;
	bh=u6YpawA7XHdV4aJVlqEfVQQfnUkSKfiSTVVw4jE5+t8=;
	h=To:Subject:From:Message-Id:Date; b=SjjwdocvSRRMUdzwd5a0FkKkqU/xTFBAk9iGgZwIH4Xw1JXvCoWzi1PeAWAtJlzkUb2UJAPnMIqfDh0J8ESxGVuT6L1xxBU74sEkxIWB/83w4uPHsGzw0aavAS4fmiNbL87IrhX/AT3AgQa2u2WrSNSkswAD7Omekw2CX4PC5HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj2Jiwhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj2Jiwhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFE2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786188633;
	bh=u6YpawA7XHdV4aJVlqEfVQQfnUkSKfiSTVVw4jE5+t8=;
	h=To:Subject:From:Date:From;
	b=Qj2JiwhiX7X+Usw905ycDsOL5BN+k/HHdkS45t8V6TwGzvVfR+QgOuU+/xCGxHe8P
	 J3FaUoVCZagSy4YcmeBAtB4+tAZcsg6OhE8G+gkABYx01l4gKYuqXgp3719by8+yIM
	 N93ASW5aaqZkrRucUrwN9BX+Ll41DebiMoN5ncoo7wXg1YiZuo4oo0SB3MQN0j+H80
	 rQ/bk4pEwzNxTomiSHnscHkh13PlALwLOA6J2wle1mHORD6+wc6kyxwKDHWfMJxfCa
	 GvVC2cxtFjEnvk2ZUJ1/8Bdwxk9NAc1GnDJooQhpv0CXsnMWdGybPW2QcPzhq3Lk8a
	 GkwUz9fEJlqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B689CC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618863370.17971.7830594054055212261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e968e205d0ab2774ba36bb3cd0ce96eb94dfd003fbf387f0cc03b0f93bfbed
Date: Sat, 08 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786188633
