Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE852DC76D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769857434; cv=none; b=rOkZqcoUZVkeHx68axQde91vFjvz5MxSEz8VYLdy3/u9/tuqekWNZMAscbsVF3FAfSbBvbDHNaj1DuRMMIX406OuDFcwwNL+uWku7VGWx48XSa0mywUOIU5jnuIfItFSbp+o7SEnxU7CIRr3u40iRocA6CRbAVoj67WVnqLqnKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769857434; c=relaxed/simple;
	bh=z9OpTNICe3fa5z+0Wmcl7HhsyfbXbTakrPhiEnXNBYY=;
	h=To:Subject:From:Message-Id:Date; b=M6YsBJjvmZd4t2Ie5F9RZZJCkOozJrPjFyeE+cZHGT1l24MjTe30mQzroz/mI6aX/9RX+5Xl+RswEI2Pm6HqiCnLxOgUv7QxoZ4dc5i9ge8R7GVmiD3wEa9df/0aq9D6hjnfhoDlSGwFAZWb5r9cT9ge4sU4LbZXzHeHlVYz7XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdkH6vxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdkH6vxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2731C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769857433;
	bh=z9OpTNICe3fa5z+0Wmcl7HhsyfbXbTakrPhiEnXNBYY=;
	h=To:Subject:From:Date:From;
	b=VdkH6vxOw1qF+8oi7u8MNRpLK5JtjzNIgISXg+bYnpkm1F+f9hrr0MhFuA07f1cDK
	 CuqaQtZgYz5B5d/2SHtn0tJzLv2XOqMdvobFolf/kESikN9ZUfDAAIhBcaH2Tcw3T9
	 /rtcqxkWjy22K4O4DeOg0GY3pEh5sv+EXbKvzMY/zOa5pmz/xOQ+TS7MCTOUJu2Ig/
	 XcdgjETglKSp+70EM3mAG/AVk/HuSqeFKEHjn4fybt12lOE17MWxttXy+E4Wuu2jOj
	 QbRnzfajNInB6WOI8VwP8abZFoZ+k/TTnPIUMItbFUBTshczjjWPSxMl2ywGHJi44G
	 3Ecw1653ZXyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006CD79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985743358.9615.10325430909469419414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2db2272aeacaba12e6ed4b956b34464dd9db4f24f53c4ae32c7e26a00ab1943
Date: Sat, 31 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769857433
