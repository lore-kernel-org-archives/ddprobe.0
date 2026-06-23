Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4780D2E285C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782228994; cv=none; b=lAS/xq3h6/kqPj+oheimzejxi70wsS9ZFs5xAM3o4IE558rO2XdZrBPPF+fA9mYfqnkT+//xLKJksCCjL+WtqRIkwGQv8VkCuy98OgjjBAEc62fugxb0Xvbf+tJbqKCu66gS2IyF/6uk6aryRzkBfwQlNLMRfUTlbFOcJ3Rom3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782228994; c=relaxed/simple;
	bh=5aCMMAEZp3ZNH6l5wMWjzSYRgV0RNXtL2Ok7TyeNNdE=;
	h=To:Subject:From:Message-Id:Date; b=sV5hyqK3tBNsFQ18B8LsbLaW1+z0vVkg7cn2D4eWjgNFwT8Z0K0cONuavnZD+iWnQLJ9S+zoKrLfJEXAGkB4XYcFVKmfkguzZ5u2GPVwKLLLEAVwn8nDBk0qiZfaVqzhf9fTsJl/P3sf4gZfAEHCu/1cNyz+YDQzOleF4nmDY3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScFrlDpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScFrlDpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAE7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782228993;
	bh=5aCMMAEZp3ZNH6l5wMWjzSYRgV0RNXtL2Ok7TyeNNdE=;
	h=To:Subject:From:Date:From;
	b=ScFrlDpD6/pXTAfvb+waP63ofvxKm1BkcOYSmSR2EM9Gd0mHpHL76QJpfdc+0yRe+
	 9XAjOeVb01s7yTtlJGGbGqKreiPFCoBxkgmlP3w0GmwIffRBxLuFUbA3C8jEhh54LW
	 20RV+RKzgINdsI+0cqcmmjv9OvX7lS3X31Q0HJsD9hV65f4PSwyj3nYEvu2kdd0PU6
	 ewGJNE7DMtceUJudriD+A4Q52EJrN0+1zU10OZ8hMOCZdJd7w62MiyuxeNaBnCNvO8
	 KPFV4HwCGwRIEkcbSMkOymB+fxkB4MwU5/FwSPif3wfocWKvNhrnFl5CRJgeKYQ60e
	 HjifRJc08Ud9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC23CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222899369.30933.274002930093636549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a032f140fe76e8ea821f1612b9c8783d831347fdfaae314b9cd5cabe5c2f58
Date: Tue, 23 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782228993
