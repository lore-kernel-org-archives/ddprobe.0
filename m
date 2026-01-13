Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2071E18A6A8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768269234; cv=none; b=Dc1mZdJmaK4u6RJE4v+9zu/OTPszzYOO296KeF+Bjw+MrirNFMH+RK28SIrBg9aJyvSQDHZfCfWD7z5o/k+vYjGYEXdlwdC+OJ9AYfurJXsiw14Tu/foE9pu2gt3hS1P9JVSUvvHiQh+ExHxjRPxDmxjpLiVNL6ffLmBcQmiCj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768269234; c=relaxed/simple;
	bh=QsCCSNvT7sH9k0H6klTUFjPhpE3a7cDTtNzGlkLMeOA=;
	h=To:Subject:From:Message-Id:Date; b=qCIHHX5l55t/pv8+SYXJvo3kPVxTHy8m6QckaQlZXkdL6lbkVUEdStBBBeY4/FsWs8bp8XHdCjYaSd23xdtiVeEtzIpb40y0ks/XHDizs5O7VIkATN1TQ7n07WHguLkjQQergGSOSXYgebm6v3JobbfnV3DjPjks43riJcUTNv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldG3gGPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldG3gGPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F4C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768269233;
	bh=QsCCSNvT7sH9k0H6klTUFjPhpE3a7cDTtNzGlkLMeOA=;
	h=To:Subject:From:Date:From;
	b=ldG3gGPWp5q7keJyVcLK0yB5phA+cQ+j2edciNdGn7HyukRbZJIH1yojvY+fZJhIy
	 ZfM8POGl2v0L4Kyha4Ws8IoEahOjj4FRq5lIygUOwm14+Wp7b0UaB3l8SfhdRrwpOz
	 FlkUAJe1nBKRkfBMtx2EJOUoDZ8Zg8bG6/LdqeG841JFOLdpWcRBz0GLdJE0yMOBqm
	 2zyr5heBsTYJE89rgEPc7OqmZJIck/yLO1CutoqP+nooHOdtwFa6TZi1pkYYKe3weh
	 w3NWrTqqZ52/3npZ0qvq+DMEX0EddrYedQm9OvxDQqdrKkDcZshfXYY2KFF92jbRtW
	 VdGSUBL3NZtqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5FCF45CB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826923357.673.3479520412292613867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9429cffc458925e00d1e6ea800279d28dfd812b68dae76636f16dd3cf74ead02
Date: Tue, 13 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768269233
