Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D144B3A8F7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758323993; cv=none; b=BMlM2IubQjEdHDFzoI21A3K7wbdTPFGTF/qtQYi1Cu9jH5J+roNfl3mcqwnY2tER75bnqLIjcriBZU95BRGE2hyJJ2eIeuNJDj/ulahnV8+qqDqMhbB0Ash690iSTcV3vhj3uqAIu/dGvtYctPyBQQlbonS6IWStWcj4gSxeizw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758323993; c=relaxed/simple;
	bh=kvw3WI9EWLhjPbTzjYRy6P4Bzek05mIyaXJC4npHWiU=;
	h=To:Subject:From:Message-Id:Date; b=XV+QRy6aFTvGCxzOogdwRZIOozv0dHNCVFXxe/DAqqLWv+CLLi34jPgwy9ed+Y62JhtYUjJqs8TNO1kPpbyb5bQ9soAN3lxl/l/ffIg0DrepsiT764Uet/jokU8b+qY0rdI4PjhbgRTDxmmlVWLw+ygmOuJBmCAQi7J8MQIZA2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrosFCGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrosFCGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758323993;
	bh=kvw3WI9EWLhjPbTzjYRy6P4Bzek05mIyaXJC4npHWiU=;
	h=To:Subject:From:Date:From;
	b=XrosFCGWvAsK4En4aiqzwrSWjyrsWnGou+S0GUwuU5K2VkGPMYVtIoYdgs811gOgt
	 T52MB4/JSAwKij7H+PHuv+VLy8JloLmq/qjXasOV2EOVu+Tgj+OO5Iell7+aGxoNmi
	 sNpp0eksgRw9z111qgvi4rHaD+H9yRbzPuevfxxYF8/zP5hVa2kyWX+xkkB66NFGDI
	 /wxnhUXz/lUT5Y++Z2k7Vn50j9XZZjsBSgGb3xtiHzte2DrYXS/xZc9NYV47xhVTs5
	 H44qYSuhTcK34y659QytffkqZWeu+M5HjXvUjcCQ6Y5I4qZFmYp35hGi3T6C5Xcq9M
	 CbI5YvtdNpOCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92818CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832399357.20762.3979556256220636067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cc0b2587d3490b9fda0a5baf360810f910df68e9c2713aab2d740d7d3f0e8e
Date: Fri, 19 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758323993
