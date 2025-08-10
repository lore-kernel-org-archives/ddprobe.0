Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C13F1FF61E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754867395; cv=none; b=QHHkM8IA83DjGGsIpuQoX4nWElMZSyCFam1c3DJe7qQ/fum+iHT4LCmfhd5ZFb++r5JqjyASE9GZ/tpGl0qSL2r53ear1NWnqxXirFJFqxs4jAat3Rwa6d5NA3WiICyVbbtkiYxFFTOMT5u1ZNlG6mTuuFPaWVN0gr536y/wmog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754867395; c=relaxed/simple;
	bh=c11OThu4mYUNGBaY9V1KSv06vAMxyjrEpl9xJSx9hxQ=;
	h=To:Subject:From:Message-Id:Date; b=sjR2AtNU2WO0FCDbqEoK5e9scH+eNjxF0OHvh/82x/YARGB9+276K41Wug/bvZ+9SziEiYWqam9JgO12mt9bpyP4BQvLrQ40AL9U4oYdZgVdy04TdzT4gpcpE9bnHjgEzmh/OCxtHhWYRfTQ1dhkYvjBZIuGFcRjd2qh31JyTQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEafih0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEafih0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A142CC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754867393;
	bh=c11OThu4mYUNGBaY9V1KSv06vAMxyjrEpl9xJSx9hxQ=;
	h=To:Subject:From:Date:From;
	b=EEafih0dsntLiokv/dm+SrQhV0bzwOzb0vcaLgL/JqjGnkfR0pA2M/IrfOnVxi7JX
	 Z3YSPLL6qie36PKCMF1NSgwLBvxU7lcJnerwtjqB4d2P++4jCjpd5hCrwBubE5lSLd
	 iCYfmIEkUP+i9S+f/I+lV18UXK1DMP8CXRgQLFKZ7g3XUInJEs7+ygQ23jvCu3PDDQ
	 jyA+SucBOnf2wZqZdWcJ3jBtPzCyG4jZPgEnI33UkgR/9OEGA6Bl3d7uWj4xbc33lQ
	 4QhAWFNWPth7KANiS9qRQEnXK3a6mA90vejYKeOOr9dhLrhezCBpznQRjYJrbFZ6iF
	 V7QgT91kjwwYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A5C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486739357.8884.18320656394357705490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ac307ef58be1630b79bdd7f565b3723c185a5236f797162adf2662dc19ad48
Date: Sun, 10 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754867393
