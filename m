Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3907B19F12A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756940994; cv=none; b=EHzcCQ8tWQCkeo8OllZfgSxZNQp9IqQzMUHoOCKEhWyEcvKisicXbFwT9ACd6fBr/yDxYBWEV3mXpsuP09YjXyzbEP9uvHG62sILbhG8YcRdR+kx3vPKrsnexXN1rNkTT0hytLic9gHRYsdTFhLlydd8jVXV4m+DjLUWmbo/7qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756940994; c=relaxed/simple;
	bh=+pgb4k0wTajJMUqbPlvy/j8rDjSOoP60mQUPRJIBiBU=;
	h=To:Subject:From:Message-Id:Date; b=soYN+3orxfSxav2iiD1t5weTJzoXDwmASw9BPdQ0ns3tOCZH1aXTXKNtjXhVKeU2Iq2dTEjjaBfzuElQCcOOrXWilaJKR4hSPr0uQOpWeGRzYhEnPkh7zd8Ur3gQYFPxGpuKft0nc/ymaWx+BgnQ8k90W3FG8HcZ4NgaIOP50DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOw/64vD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOw/64vD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60DAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756940993;
	bh=+pgb4k0wTajJMUqbPlvy/j8rDjSOoP60mQUPRJIBiBU=;
	h=To:Subject:From:Date:From;
	b=sOw/64vD9JeFVI2RvrFfcO2yV7w6DkZK2rF9aX4Z9xQtcD+hPZOPKSuQaoMUMQyJs
	 amNLzt3GgpZ2KxDRmDcr4v60yILdr9AXK3JjhOpTd9nCWxHTZfGovfbXsluP3pA+3f
	 hzw2aJxjGD/iSwM3YN3QzTfCvoGQ9LtriWesYpUQKxdaX6m9IoPVA68yMpTGnXkxRj
	 08ms+9Z/mT5JXo3ZI7WlSUTK7PdYcr5T9vp6Isc01BRQl4f5o4WQT8KMXELflYwhmx
	 oIzU1KqKTh7Oaej8yjihlPoDvBa2wM1QjOtyJDZOFow1BW4QpPuUZNlGABMvpZ4Ad5
	 WpZyh+oG73q3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94088CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694099359.25244.1776026603880494679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7b0bdbc1f8a9816734fd6529b0037d3a58e5c8439c9d838994798a43e6d8ae
Date: Wed, 03 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756940993
