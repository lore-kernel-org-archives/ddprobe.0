Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38B635FF55
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560234; cv=none; b=m4n9dHTfIhygS/EQ9akYTvZk8qPOxMAKA5qhI8Lf0wWmWkFw6T3RGa7rph/Y0hAvK/bpW8LnDkBUla3dJI2ZRcTP2PuX2eSv+JCtJDd16hs/eUvFhz5tRDPIavE5ML+mCyToCpgj9gyAwWMYMPNi/oVA1v9jvMYtMID3hILckus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560234; c=relaxed/simple;
	bh=4hC4XM5sVl+iZBSQgET6cSguxTGzJTEJ4DFWoEAbEkk=;
	h=To:Subject:From:Message-Id:Date; b=g6eIeltubJiuABxw//f4uvL+RIcDrO98wNqfU0sveLPQYm8gt7XhRfYdAymbhhG7L8pFXdLwAu3IqYopw7uTlMp5x00Cx+T2XMhX1q9eY1aVbrwyaBp0NAe7UlyNLkPeg+ly6nvybZXNpQBM5cxqtHRMhJ2PTq81AwyrZzwYTrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgVocw7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgVocw7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFC5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768560233;
	bh=4hC4XM5sVl+iZBSQgET6cSguxTGzJTEJ4DFWoEAbEkk=;
	h=To:Subject:From:Date:From;
	b=cgVocw7jRBFjnfBE54q1MUvCG9VSNpeGuKYVZU/pY3m7vx/A6aIT8zenLJAF6OWX+
	 24i2uY9GJ41j6BECxQuJoE+zFCvntK9OQzuvrPahWoZwKFnKWLuTJdXnhAu7wsoldI
	 gGAh9fsY7bkfUP8sB4F8iJZKTaPrDyORqwLK18GPMvVzNMFTeecUng/jDBJCuCqyYg
	 Iin2ooA5YDd87Ox/JoIj6mY6euSyfR0JaoIX/rgNxgE2f1E+wZIGEDbAdsf+0mGsZA
	 aKSOl1uO+2sT0oTjVvZnzreCEoQhHT0+gqG5gUcxpF4U4jgBpQK5b6BT9fNO/qq+aC
	 Ci1KPMg3NQhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEED47CD3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856023358.12179.8884306389106121736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aee1ae382bceb26751d8f448090c7c9e303216ca0cd1e1583dd40483b0a7015
Date: Fri, 16 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768560233
