Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D2E2FE57B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762770594; cv=none; b=PFOhMO8ehSiwduzYhOLrR82eL3vLr/lduch+iLmqD2xL2ih67IIUzY2A8TcHyx4gjc/nb8FmHDg55zY0U+k/U0sNfgTg4OUcda9OV8lhm61sUjBBx31pdS6x5obrJRSpOPycQyy+uQsUo4m6vj3QqSksuBkWf24GDmI4iMoSKmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762770594; c=relaxed/simple;
	bh=N+TC8gEDaMkOMECVclfURNVudd4Z1XGTXt5vb/3hgKg=;
	h=To:Subject:From:Message-Id:Date; b=OAcVpYun40kGOlcPa7A/dxxSq/utOnYh3r2sZFDzMsI3L9ZPGewVbYQSsNM+HIVQcl52Dg/8c4HT4z+yC8SAkmOElaoJpVQ16WKHbGEBIjQBQjrdYne/QGfPlxvlmVkQ2IEQ+RsdKY4tC5QJCq1veVmoG7yCdZyVZj6bLrE4nfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTizXmnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTizXmnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99CF4C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762770593;
	bh=N+TC8gEDaMkOMECVclfURNVudd4Z1XGTXt5vb/3hgKg=;
	h=To:Subject:From:Date:From;
	b=LTizXmnNffV4YAgjLxt3LGbwynQjyA/gE8NCHkIWewPONQzXn/d4wIreKjrBG+OWm
	 14YB3vmBc1PI3+VOeSOHP8b+HSAduCrgSPb4TrxnClgjYD6MUdOfa3G36jYNcWeSVF
	 MUrQWQ3y6LGjuzq8yEcC6aqPXIyRm9+JGBVvDeuRG0FvLL1SUcJpsMBA521C3XvsKs
	 M7pogu0HrlYHSALxfF+n/HC1xC19zGy/UYJMrdja4vvcEMIoQQ99KMMcv3T8WY6/6d
	 Ft5YQ07AoUYCue/7R0q94rgykKvDu2zQS5fdh0bdkWHKEiSHD2l82ijvECMByC8K3C
	 m9SkNcbJ5Sdeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E539CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277059357.23869.1165181514157601122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c81fcf114ae1a6b1bd409e1e63773f76ef407b1b631b886b2d731d10d3c2dd
Date: Mon, 10 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762770593
