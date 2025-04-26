Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC06F53E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745627994; cv=none; b=QUWHzwacoGE4dpS3qUa0JDkxgPGBY5oYGzznbIfRlMV0+i/6P8wLmE616o9oJWd2965Lz4QgDF7B7k9i2hHFl7v/TC1iHU9XXRu43J30iX3GRdiJhjpZRNh1KWkLRGsY1Ff0rAYr/nX9tgxEApJBsR/Uif7J0p7r6XCyp2AzfDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745627994; c=relaxed/simple;
	bh=Kd7XeBOcp1jyvcNvobdIJ2FcLVliNdwwjSpPNpUbrUs=;
	h=To:Subject:From:Message-Id:Date; b=frfdP5Y7Sz6oW4FIfoQbPJb/v4TlZWYUo5yTuELzR+XUJNYkfo1Tzui+Wsg8smpLV+AOSLHJm2JqOpY/+yQqQg9MiN0Gba6xN/6Ynx7ehw97M/WWT/AicXOtJN4a4CN5jg6ZcRuMSa6OtdsyPLcEYKU7iwg6t5aqyqbOBo1uADM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUnf7YRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUnf7YRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745627993;
	bh=Kd7XeBOcp1jyvcNvobdIJ2FcLVliNdwwjSpPNpUbrUs=;
	h=To:Subject:From:Date:From;
	b=RUnf7YRFZXvUcnepJLdRZauzrmYU5WR+J4GBdGhW/xjH2ELk1IQEq7Rw5iLqplIRy
	 EQxwpTHr+4OcoOr87CH1yqwAg+ZJ0oI5Y+38rUa4NY+RC9W9Cdws6adTHCt+kzJ2CC
	 10uHBFBc2AAekBsfeThFh7ynP2R1wbM82w92Y8bkibW5BC0bPoOLGI9zuz+dDQIfe1
	 vByHW+pnQq4dR6Cnw/aRlnP8jyi2hdK04KYcamJzRSxGdj7RitQYuw66rVfJYFMYZ7
	 o5EIn/hv8oBDFKmD+6BPZO+1nwtRWiWvixX9HIPVTM7Dafg5ykpA0NHwFTilgMnGAy
	 vIpuFq0LkwCYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2CC369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562799357.5908.879966195327634222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d97fca97b3da6077cfd27bac70d253eb858978edc018560eae521e7e964d62d
Date: Sat, 26 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745627993
