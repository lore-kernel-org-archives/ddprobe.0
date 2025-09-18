Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D01827EC73
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758226194; cv=none; b=qN7UsBu7UD3FRFcsahj/8WBy82NoQaLub6QDz0Q+LUi2Y9ty1W/EdnIGH8WG6LUIlHIdSjEKHbpZfUPEO61aYfdAIOvqG7KdrZLQKsilvLBgbPn33b6UPLVVrPCGKm6bug0rQyAsK60cUoQW4PWmtsONPW5EgCATpWPdAVvcuVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758226194; c=relaxed/simple;
	bh=ZI1KOHAiyywPSC7vzpOay31P0KxKPqUk9wVwo/8v0pU=;
	h=To:Subject:From:Message-Id:Date; b=AuqyuUOJdpESJwlex5b0+3FCGp9ZfHk5U01Dcyi5tFVYLT5USCsQnKJ8jq37xzkDDwP6XOaZr9+pYUKpxTZrtxkRZeypkUxUTNTcL24opgbWfCF7dkyYeiz2MVTo0NIOGR5uhDooChdwnXjmkC4HWe239j+gLdjilW/ccq1sknA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzVkpo80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzVkpo80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB72BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758226193;
	bh=ZI1KOHAiyywPSC7vzpOay31P0KxKPqUk9wVwo/8v0pU=;
	h=To:Subject:From:Date:From;
	b=IzVkpo80Nm+G45591E94urS84q+hHIjELccwIN/Y3viJuCJUxyfjZ6de2oE3pzbdc
	 JWdJkhH5c+NwUxVj+wsix0+zfltpQB1oEqwIQHExnVre6u5l/XtRNjRpLFmpLYup7V
	 8OTGHEeYaLQ7K0ggRS109GgNoZsep5c9sAjKAhMP4ysOgk13r/vVJN6hMJAnM7xnc/
	 BQrpn/RSP1Ap0LtTLyZlDJ2zOVYe9zQj/Dq+IRE/7zBkbiw/I/pjhXj6knJRzIStFG
	 /WDk1hUBac90IMIQQTl0D6IB3OkNdv2oN+DJB0IdaDp8iZQ8Hhz+08JyuYXPCdpSg+
	 EHRLvGyCjvsxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6376CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822619366.18485.18280464928153029833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02f67198d918be759f9976dea65740f23269edc64ac47a57cc5eaf20526d5a9
Date: Thu, 18 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758226193
