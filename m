Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3873D481B1
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732763156; cv=none; b=cvQs4XVlTN70O96xPPIq5vU+ORLn+01e0vLFf5ng7PhyNnLDELDCrsJpS8+Vl5W3ZZ7n31cxNVB4bJBRGZ8xTrt7ZJmKGHg5uOjC8oxYqF/vsoiJqUC14fFbGpKOALVP3nAZogVjQ5K911E4GFwNd1kaG9JQYUUqpdA5wBe+QLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732763156; c=relaxed/simple;
	bh=zQJZPYfW+UqE9d8WzcjSa36BZdnlSlInC/TJZCIr/dQ=;
	h=To:Subject:From:Message-Id:Date; b=Rs692FAQmOw+z3G3z3naKXMB9NVjOIb1WrUkO/qfgGV1vfer7YAY4nMI+n8s+HhzkyTEh+A7XGqoa/dWk+XaTy8PqChNJGOFDaSQrxozW9WMJX7H/YoUrcjOm+SfZMkyswixrDHyJZGgGq1FHzwK84t/BGFUQZHFT+U2t9jcEzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHnt9HkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHnt9HkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ADBC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732763153;
	bh=zQJZPYfW+UqE9d8WzcjSa36BZdnlSlInC/TJZCIr/dQ=;
	h=To:Subject:From:Date:From;
	b=qHnt9HkZktN3arnCHq9WRaL3W4MmL1amQOHPlrjKiyIBNA4blZx0q2ECdu0sFqJlJ
	 brgAk5bB2FvQzzl5q0c/UupyOq1quBqD+J5csPfCQDBmLJu5xtxd7P4we+dWyjI8rp
	 ZdU23MXvfzPezLcdJlGQ6+bRuJUNMrrSLev0wj1rKaaIPRNDceNNTxxpM4wiQAtFtB
	 qYoklF61mNyCwk61gTa/NH44NT3Qi5uzMtsQjnbA3hR8geydeXQskFrsbaml0NW+gD
	 eFTHbkN+sS0qYWEBqDXuw86JR7aqpXiz8K3HZhBjfUyf03QXxKAccutwkY12Yk/lM1
	 nnefWZPsih4qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C15AD6D257
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276315362.21444.4865655297543977705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cdc8ee288bf5de5c51346714a9acca550127e1af42460485086483bf8ce412
Date: Thu, 28 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732763153
