Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727522B8B6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771047894; cv=none; b=I69+chlX9FQuysO/9yhOpudQI13O3JZxgkNRX0GPl4iWdroFNJCP78uiI/K72O0rL7trwshaBtqJwiXOMmDinLOElvx6w8h1k4S76Y7Rx9LhpEL367AJrWDmlUfFLO5cLgXegH6vWN5wUhHuzdQoArgSjof5B6SdWTou3hpaR9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771047894; c=relaxed/simple;
	bh=S9OEPjbXry4255Ut/1SPiwRYI/s5ZxrpmZzSvjmVhH4=;
	h=To:Subject:From:Message-Id:Date; b=FIrlcx2ixrk+Y4r4jl8ouFldZo8Ot+sloYJIRT/AkNToD0VuNd0HvzLd9X4lG5wLfNr+1VSzxKE0JXtGW7DoBYyIULrjaMPP3CORCdIdY2jQANEO3RM7TM8x95pHJeEwCfkn4PvOTKE25g2HpPKj7s90aVlqOlpn7Hh4nGhOou4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dtom2snQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dtom2snQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45AAC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771047893;
	bh=S9OEPjbXry4255Ut/1SPiwRYI/s5ZxrpmZzSvjmVhH4=;
	h=To:Subject:From:Date:From;
	b=Dtom2snQZaGIFZ2Fok3yugso6jz7EhFMQJHwcRHkYBXkaEILoX2Uk4i57bUkhdIfp
	 fZDb/W7SGMSK5l0A6L5Cx8cjh9n5wIXZEjgA1TwGxlMqZHXlRf8W2CL4lED87gpyX7
	 b77uLYY93IX0v3JRhA/JbYAGl55FW3TuR4QDNp4NktI4QdweK7Oe//Powneh+V8wmS
	 5t9hQAlYMt8jlSZ+uSbkL0pVgIrOFeq+1rnYAM4cXluSLSu6EedSsxIPek71dTSpCC
	 sRKbNPThzbH5r+PYOPbJUsDM9iaczkejfWAqKnwGyT5s27UUdBb9H+AHIMWr3ouPWR
	 T4l10ipDaPk1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE11EDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104789360.24039.12846657017523718761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee48fe65eda5b406670bb1a11eacae7f7be4f92ace6eebd19a20177a973d09f
Date: Sat, 14 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771047893
