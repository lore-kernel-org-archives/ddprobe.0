Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C84277C88
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764219174; cv=none; b=knq/LmFJfrY0rScPilVx84U+KEbrPLx3ti+BlvqJ33ZCkqThnRb4iK7DeGD1h7SBEFb5KZdtc8uD8714t6AvrlIX4rwGFr/H4B0IZ9Gw/ushfaDP2Ds1ABmPCdR2otCvQDXUX6sF7cs6xP2+2/DkJhqMTRpIZ5BTYQCINtAbO2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764219174; c=relaxed/simple;
	bh=Lg2lUl6U0JuOGWWWLw7MrysthXlJagz5iN6nvdNGbVU=;
	h=To:Subject:From:Message-Id:Date; b=rRCt+arD5OrGKQajdNIpbz1klFli+GL+PjPortLfG693fJuQWD2kRx7dhtuC0EnRLTXKAUQlbfNGXk35rAAAg7I5fXavG60VFySf3sq8BeD3Baf5CdzA0lROKT9/U4LYKjMlVQ+EonkjNI+gczzIgii0uwQs76CwUbI3Ar06vOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4uEzdYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4uEzdYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5595C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764219173;
	bh=Lg2lUl6U0JuOGWWWLw7MrysthXlJagz5iN6nvdNGbVU=;
	h=To:Subject:From:Date:From;
	b=T4uEzdYlVwQoNT1ceWEqDXX/yUbLme0WXxAr+bre3jRMXJFO5DnriU4/AzZafvYZ0
	 IL6Ij0PzZ+Nm7XQ+WZe1Ln34d+MRnNFxCV+r4nK+zvw/COPT0E7AmWRybpRP6Vb5wR
	 r+PuGWddFGcCginwgVeUogz/WXZIR7KdKbI46HZPCIGOJZ+XqCGnSbtDPB+0A+eKJ4
	 ZLiUP1icWXIh+gSEFJ3pF5zbVIOP7LFfmvUMI8RcEWn9x8r8uPBlxsJvpTobgmPbuQ
	 9XeSBVIHLogeJvbQSaeT6cOm1Lr4Yw3M4g90P6zyNl40lI6f7BWuZ55KeXuwgTMqL4
	 wp0CxuVpEKI5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932A7D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421917359.23288.13886470308087484591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963ecbdc767ceab9c8084a544cd0818a41edb766d9d5e69c5d669efd062eefa1
Date: Thu, 27 Nov 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764219173
