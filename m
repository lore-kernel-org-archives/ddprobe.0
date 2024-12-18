Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F26158853
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734530154; cv=none; b=kp/VDNdYE/kToTTTFLtS1FaB4lznAvgkqeUZwziPbyF3H96bgcl5eYEVc6Fpoh/ZENI0wf7H+TTQWVbcTPnE6eNMHmw/dfEbMO5ibGCZaTaOwuAeWvwNils8Dk2BngK8BA7or+tLFkNRVz6mQTW7GskmwUorGcpzhkJQGuB5/GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734530154; c=relaxed/simple;
	bh=UNVJEF00r63utU0GdaQyYB1xRT3rdurlMu8ISJ8sfAQ=;
	h=To:Subject:From:Message-Id:Date; b=uFyAlJzqfUGLzQmlPxFpsTAZEIAz5cgPgb5QN5EO9wM7QnhvcrFZFNor5Q/KgTTbIeqdUt0NXH+/9wN3Iwum3HSo+42pWx3hkAiePTCbpP0YcEJ69AMpYNPJZFJoWY+J0Z+LK5q+NmeXCKS9ScMuK29ZW+5fjmkKXpjmhzeXzI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KExNz/bU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KExNz/bU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6751C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734530153;
	bh=UNVJEF00r63utU0GdaQyYB1xRT3rdurlMu8ISJ8sfAQ=;
	h=To:Subject:From:Date:From;
	b=KExNz/bUcWXw1+mWCMm+FuspuPNDAQrsCKYY5yM4GZDXL2S2XnM0s0ll0OG3VWbq6
	 4MavdW4tbafIEIV/gge+sCGNetNMZwM+TO6HeDJpHaL5HGiM2ktYDJeEvgQROn5qD8
	 HjoXteiY9/wk/PRVfgWgJD4Ufzg6TtMnuR1V4Igp9NnjzwBxxBospPXNeeTP7swiXw
	 dupus1Fr8lg4NiBVmnISs85J8JMqxxhybUUF2wJQ9Vsl4VtulgbZIN7oyvS+qtpOCV
	 epbOAQAhVz17XgfYk4Ftd2J7iKvk8lpgkEnaOE7cOyp2JUlTwRqYZoxsk9sqJqHPgA
	 UeTpIH3o9IHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97538E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453015361.4540.17154786278643287751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a667c3d98bc2f19cd168f4d6c0d1dcf3e31557ffea2be3579b1d3b38ca4e5229
Date: Wed, 18 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734530153
