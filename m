Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB74277029
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761127194; cv=none; b=G04WjLzhHzUh0FGAsMGLmRornDwfCfDeI+QGjFmpCf65kBOOHdS/H6O/3rivRGow14OREuWq8UXHsvsfIf9i2aXYs9DXNkcCbuKVkTSBXOCQu0Mq1+IgQeqePULDdEQMVLeUgpuXxWW3oY97mPFtHBMYFzujkPGGtUC29RBs41M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761127194; c=relaxed/simple;
	bh=zqoUTXwcPKS1dzwOojN++nldw3zmckzfxnn+j5kbzY0=;
	h=To:Subject:From:Message-Id:Date; b=rLWO6y4xn2rwJj9YBbtew+CAb1DsbRnI0ZWzWC6WMB/qbCXXhircpxz+dAFZL3ge5tEa6SU/b7GkpTFi/4tD6qHNYw25uYqwJz9XwwIKkIBFXyz4zEpa+v8gkNYyxRzyMZECg23qILpqvyLSgs77KXvu3E1WnFSaOA37CqwMZE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mR4TTI77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mR4TTI77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2784C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761127193;
	bh=zqoUTXwcPKS1dzwOojN++nldw3zmckzfxnn+j5kbzY0=;
	h=To:Subject:From:Date:From;
	b=mR4TTI774Jsk0MH92hG68FvebQ6qu0QokRr8ONdrG6HdPmmA8FfWZtO1TN3HkXatM
	 tTpsCWbLB6patbNsEe3Icy2VrVnkNuaueidVmCzULexPIUhAeqsKArXTGdJZpjxqqC
	 5Tisa50ePBpwm0F1anUt5Ohjjfbl9HZo2GCE5MIaI4tG7Ak5o+RFiONLTWgsc+9XT+
	 xuz+Hy+PX86GzF5CCIos6vQSZbUn5FNW3Upti7jmF5yWAZuQGi/f4OEpJv4JDkC58b
	 D5KWiiWBQuIHLPsn0IRa6xccpxVkO9FRV5pPdUr1IuU2JsSpvM4SUeJbE9NwLpfzHV
	 gvjjxXCXHEUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D1CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112719358.21620.11982448005373637163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92896c080e115864e4b8295f57149c78fc363d35e4d617405a52bf957d4f8f0e
Date: Wed, 22 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761127193
