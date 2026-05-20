Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639D30675C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779298234; cv=none; b=Y2+mfzsbTgh+lazxx6EmOLyDrDSxIN+CxEOHFwucKvSd7bBgUolOA71XAMA5kVgieKeBu5MGQjCvbcw81Fe1Za9rveqbfH8xHWqAvaX9ci8+TUPIR7khyHMIGEIdqO1cM4McwXgu/aOsvhMqANlYkslUhAdkQydxKaZkNhaZHaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779298234; c=relaxed/simple;
	bh=o8ol9vStSGi3zVMRh2hFChHJv9Gks5obhvOYbG08bKk=;
	h=To:Subject:From:Message-Id:Date; b=TyB7LJNqj0Z6wkCHx1sMbl3IzCxmMGcYlHLn0Kj2ASjQYYclyP5AjJ6ivDBuKyt1MVrfUV59mfIRYLZoa/J//sfBvwZZ0KrTZahYXDIhK0mV5Y0Bvdrs8slbl7hQlIYhJHJ36r4XVus4H62Y4hYBG2NlBFeUJEh/uU3FZhRza2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBU+0wEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBU+0wEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12E4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779298233;
	bh=o8ol9vStSGi3zVMRh2hFChHJv9Gks5obhvOYbG08bKk=;
	h=To:Subject:From:Date:From;
	b=eBU+0wEL4v6nuTPXVzgJQgl+xu505BwBthYm+uM2Mg4d9sSCBnPY0cPq7Azy80Uac
	 MOXPoGChu60m+4XrS9jWxy72gwhocw+RfC2ia13vMBtRbKO4itWNCxNzSjv5EjKFVf
	 tNXeVlSPi5PUUNBnT0HGNJFFIshaXhhrTHcHqIHjjD6ZckmAXfjdKnPGBW9QiwDCF0
	 CGKGLlyN5heQHAASeLXOrQocY9QSglCtCq8vO0MJzKOvHkp2Y1GiVmj1BTciS+RsP9
	 ccdqytflBeRPT0F+qHRg+9Pg1SZuqmePQzDYJvlETjI2sQjcxfYt7kv9uKeIeMAwpO
	 j6Y5p+FGtqBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01D3CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929823371.12889.13296345331377226718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8963dbba71801d406928d7f3f42ad2b441bffcb119e66138c76e7c0df6992b43
Date: Wed, 20 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779298233
