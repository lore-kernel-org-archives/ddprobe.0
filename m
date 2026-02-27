Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0003469FA
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772214294; cv=none; b=iwOBPC6xA/WmBXZNLhWPobZdOlfHlPDhs4IlrjOaVQmv6OjZ+Ro05NUkESPmj51mVY+SUaeIzq7hn1DFU3iya125wyXyRmnoHrN82QI7VCBNntdHk3atHufwnKu+CZ55oH8kkjli7/j2vanV4hzqf5E7VF9Zjcf2GqS1fwuGo+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772214294; c=relaxed/simple;
	bh=Fkj4VtsG14QazfAgVzs39NeKoL2t7jeypG7xv167uz0=;
	h=To:Subject:From:Message-Id:Date; b=tZ050GqU/Qq+B7Kc8GjryzsNjmF+9LS0LnjXf6D0/aiURk9HcY2bZM5k0f+hChUWrD6xDC0RnRCT50yOHTWwcbIt8rHptsZSLZlEURyB+1t1COK/ycW7hwAMTGL4/YE2B1iqXB0yH2QGN6iAf26d28hlbsHgcD299HfF7TYZds0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSZOII1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSZOII1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772214293;
	bh=Fkj4VtsG14QazfAgVzs39NeKoL2t7jeypG7xv167uz0=;
	h=To:Subject:From:Date:From;
	b=NSZOII1FxQrHO1AAiIfm3Y8MSECInDTTtKS1Wf9DNmUiWM9Wc7YOk4puN1KBld1xO
	 gnyrXpmfmxB9w2PCti3vkwtTcAzbS4SqbmSzD0jOympZdNEnw1IEp8oQCFU2uJe4eT
	 EJufkfNy2uYz3OLu5Mv3OE5mE2JwzVgOM8zVDTM4WKGSlSh7pr6HAkatefKKkxr7V9
	 iV3mmLhZTgU4V1//ulWKk8+EcFccGXNwb1P8fN+VRrXpczBOUhOEFzdFqxVa795eNW
	 j8aQg4ZsehnCY795vKQpp60igS0MednJXLwqCu+ALVZxDo878V9A08gCSyX7zkyBNh
	 eJwuaIJYnd5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BFFEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221429358.7518.3644779713203037657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe6298241bb38ab8c205c6b07012c065e75bdea9f6fdb010a5876879dcd663c
Date: Fri, 27 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772214293
