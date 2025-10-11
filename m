Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBFB14F121
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760149194; cv=none; b=hHnIHn3wbNMhIA3V5ZEkcXFseT6cO1qhkAIbsO18zCjuWFvQOPOmBiiV6lwbfHRFyRkgpBcpK1PdZjqu+aDsefyUwXe2cFqPo0hTeDcFx26L33az3aApn+LPhMnF5QhcDUDpb4nWPq3FcrpgOD853p3dsaiIJ8lYF3P58XM/y/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760149194; c=relaxed/simple;
	bh=oIqYD82AwcBg8Pcl2Az5raLm2uDfgzveZBiVezSkt8k=;
	h=To:Subject:From:Message-Id:Date; b=J9t919y/G3JE6/XEF0DiD9hRXv6u5CxXNjovrFxCNzK/EzxNWQ8X58/SxD7uJUdD9K75wqiKjmt0164p/A8KTYwnJrNHoBRoutJ6N6okfiB03RKSxDQa+k3UiCWh7OyuzX8dMcERJqo/Djt+GH0FiRjuuh1+Xcb+4IGXE08lsW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/Q1Ny0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/Q1Ny0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760149193;
	bh=oIqYD82AwcBg8Pcl2Az5raLm2uDfgzveZBiVezSkt8k=;
	h=To:Subject:From:Date:From;
	b=c/Q1Ny0WKDIQeZA7c9ijy6a3I1xbLrStdRYyoSSlvXQ4P+FgQ10aQLQ4IefKiEMND
	 Ex/fzD+cS+SQdP18/yp9VoY2MOSHNrhwlqC9zcNEhQT4OCMXnarF346Dyq1FGJsaz3
	 ZP1cH4pv1qismL8AU4UE0NdP9qGlQf0KzThY93fsHm2/OxpsO2x7Jmo4JvKJZNMg8v
	 gBtnf2XcFPzRwfoHLu5LNIhpr8pvcTIFVyevsWoqKM1cBzHyg2JNuykWWEWNcbirbt
	 rIXzCJFvD6LmpkbosISAqmcAeFclAh5iRqtd//RetGoT+wclL7NrDDTi+1bIFCc32d
	 GE9cVPgEaJ4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D99CCD187
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014919358.6516.2279646247095931189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9a5dab4b63fbd1a254ce374cd3b233d85034ee2ccad04f371f09defc14f030
Date: Sat, 11 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760149193
