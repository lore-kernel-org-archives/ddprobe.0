Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404B863D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738905354; cv=none; b=K6T16544EoRkfWhLctYCkSclOUiO0psytCQKdgs9KCVX8UnEKPNZbeIQDP56C6OqBuwvBoGMU0+8FZuQTAeQbRzobL6+GpDHY+9DlfSLVeTvd+EvDLGT+ldwnd+9IHpdp8l/r+YYwGxB03iwmngQp9NFO/6ZF7wNGqHrZjIPpOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738905354; c=relaxed/simple;
	bh=OWwmpmpkbocitI1u35BXe+x3+gAT2rBAQj7rJq4KIB0=;
	h=To:Subject:From:Message-Id:Date; b=Ae7KBlyFVoZ+36XLdRSA2er/tpkEELZCu9cUV6xMtPrIookt+9BPyo8VOS0wqywNG69tMnJ+ESn4z4sEew+JeqXQjRc88TPIoXQNsxqnhUZit11Hc3a7ynbKW5ldTDjAxSpKYf7N8v7/PkNS7HhjG2a3TkJPU34aglEkHDWhwuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKFOnziN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKFOnziN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD9BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738905353;
	bh=OWwmpmpkbocitI1u35BXe+x3+gAT2rBAQj7rJq4KIB0=;
	h=To:Subject:From:Date:From;
	b=PKFOnziNQPGcHzr4Zg/UKcUj5Qc7TsnNeodoia/vnjucdzu8UkC3xLT8XMIYiaU+1
	 lvUvxiJqrdAFt5ZdmUotg3hKkDZpGqNrLXz/4FXyzlSHC2dfiIAGJU6eCxQKZ74Z+o
	 dxthAcIt+igEb3KfAg1zs61gPjSbUJIteVC7ggmrDvgRhDQj0VMkmwXqJF2byVCiPl
	 9C0QGMVE6duKE5k2rEaFGpprSJ77C8CCDgM8zXfYIbUpW12LwKkGIhGw/LIsD/cHA5
	 gdP8cu8+x0jANQcfEoirpWI4bMvpgb1aFV1sSOXrL6TiRjKHbgYJP+bA9u2vhrsI6P
	 XF+5RyeXF8RNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3725C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890535365.9136.5871971531013755003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27eed7199761fa519a6422c3241819d3b3369d3e0d104543eeca17e1ee66fe07
Date: Fri, 07 Feb 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738905353
