Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FE6211A29
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748561394; cv=none; b=WRNnlCYSJBb/Sj6KYwAnr293HnU5VwL+9JtOZn4ml42fohXrUMLf46rnwzPGHNscaRT/ZNegPDjlNf8fF48+Wu8/aUwWQtPaTPU26n2HmezkCAav1P/2Yn5L7J4xdT2y+7OVT8JluNq0LJlea3O22qlHdi9dYTbPn4aOpuvhPmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748561394; c=relaxed/simple;
	bh=SO3EMF6hxImo5qDeJ/02VoQng9iTu6821MXJTCaln4Y=;
	h=To:Subject:From:Message-Id:Date; b=FmlR0oFKXwwI1mESqXbagoKz+HZYjWbv0P205nvUiOBRlezMUhg26A0VyP1hA58LhIq2TkZhDT/gMTw7v3AjUCf4A0Lw/JNzQVSS4oPBO0ebQZwS+hi42QU6f2WOVEHLJUr7Mk+L8G5cwUbjFfwjtzOYyTQar7ZSDVWI6ikhig8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dub6+w1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dub6+w1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FBBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748561393;
	bh=SO3EMF6hxImo5qDeJ/02VoQng9iTu6821MXJTCaln4Y=;
	h=To:Subject:From:Date:From;
	b=dub6+w1pAoCNxDD2MNYgBaR5lANkhPU7nyQ/JYYZEIu1kgxEOJrcENdMqHdIwwA/J
	 r1wxlsFSgNy6Rd3QB3+DfAQAhCiWxsTSpSL2+j9DWqZQdjoEnbyeZQNOVsCLZ22zaF
	 cAdX51JDc2F3wnG8FMeeQK7h+e3JrXvidv79a13BJBtLnWHhdcEobOM4KWTmQyf4f0
	 EKapVPWWLUp5d3J7mRQybc+QH08lsbweuRk0nElG5Hr6OSr+33AWpIuLcN5iSb9orf
	 +GfsSnOEHWp+jjVL4XBN5Tw/ANSPA0zRBfI7R6c3GA52xkHm+sXdcXG1BlGS0A4JlK
	 AtJ5YvwIDGK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ADC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856139357.4321.4123197792156167862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924e60ba9d0ceb5076ca64acb0bae418a00e3207bef9ec1a520da0f61204b65a
Date: Thu, 29 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748561393
