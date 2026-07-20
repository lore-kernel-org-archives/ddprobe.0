Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51D1390986
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784527715; cv=none; b=NFdiR4RRD90g+qBt0cNlEbKgX3uiyRg4j8GQVvRq1Ju7xY/jWq6cE5V7vduY8F7ojkulQG8pO/SgBBHJ9JtNu1ve7EIG3tDe2zwVchBxD8CXFPmK5I3BDGLkqSZE73muBg3EtQusikdWN5UHX3r884CCY79ifeI6lQd9RnKE6uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784527715; c=relaxed/simple;
	bh=BelHbeMVBqXSqR5RiwDuf6LrqF9z/mpfZTlqfhYQLes=;
	h=To:Subject:From:Message-Id:Date; b=qnKdo8G0H+3lO8GvYrLGplFHN91je5mO7K0ygXKIoeky+n0P8wJA7ClfGMHn46pN2N1dQsfjgYlVTC56wIZgRsflDmeROPdgODJiko/+joK5Xeqe2FV3SALakkDbIjG323va51vWOBqCblNkNcd0fwos80+wHkkfS+lTO+NWDak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJJTEGMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJJTEGMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE41AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784527713;
	bh=BelHbeMVBqXSqR5RiwDuf6LrqF9z/mpfZTlqfhYQLes=;
	h=To:Subject:From:Date:From;
	b=vJJTEGMwo8IWYSCITk7Olim/9L44McbcCajEoDkMfukb7MdSg3DAiStXyy/ZD+C2b
	 POYOpPhRql5vley1syXthm9s6mWYzPAEncULSTEwBNWy26qENI0CRagL1Qn6HjJkAP
	 IeqyzkierlcpWEJzWsiKt6KspNy6oA+s2oKPjA264G6XimjhouxmnbP+B29+ET6fiA
	 UCXSUQ0qwVM9V5Sh2vIVQ14euoanIqSqzuzZsC9bA6gItsEaxwfIA76sXt7skKw1Qb
	 SyFpdThzmqoI97B0CZ9xjNgp1F8JnCOpFXHEH0TOMOCsypHjk5pdgJGA7v/vDz8EMb
	 xvBBQ1cF3DjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B99C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452771368.443.8841140242049706747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb71004ab02a5b68360b8346eba031e863e006abf87625bf0392ee479ae6629b
Date: Mon, 20 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784527713
