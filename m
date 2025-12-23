Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A35231858
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766498634; cv=none; b=h44L6xf/S8iw9rzo5lLqFEEDijp2n3B/vcAEjwfLs62UEJDWrlSPjzLWl2XaJ2G33LaEHxNCK2LjSCzV+hdPld0AJ0RLNzeM4sDYUR+hCuP+MN1fLGUDGExSbZCawr0w4TSSex3/EUHpabnjf9n8ib5eOH2OTz7/kShVRuYzQ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766498634; c=relaxed/simple;
	bh=BUr8WOxEeykMAP7gUbIYwuD78e6C1xC8+wq4PQ0YdFw=;
	h=To:Subject:From:Message-Id:Date; b=oIak3bXytI7Lx9ElwM8TPvDq32+a1C3kTmdO4S+gIPjTbev4Ca6tUFIYBUvQr3zJ8i4cVqKTwDw33AZ+BudvBNeEc1jHeqRxSowyjKZnx+n05VIvMz+ESosJspydr/v4CyQ3Y+6c66xQJDPvEFkoIknEwe11/YpztNdQW/QSMPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERFfTL9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERFfTL9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238DC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766498633;
	bh=BUr8WOxEeykMAP7gUbIYwuD78e6C1xC8+wq4PQ0YdFw=;
	h=To:Subject:From:Date:From;
	b=ERFfTL9rGVYB4c2GmT62D6xq2i6FAHG9W7Diy2PdKCLTJAapKVnOpYsEBrBMK/iF0
	 griA4SvuEJEl+FQF3JCb4oqkNvp7CAgsH0rbunBN9Gmn/7olmfQ+MwONKRUGmSSn+R
	 0W2sYztxTwplmvjPypf5LSi2erkwWNnOjuEm3tpgmoz0FXrr0JbNOPKp00ibGbd+Mq
	 hHpzpXep7N/3pYPS4s2zXcqROO+cINNwhmWQkl1V/xZEryGQUz8CEngfE5CSIMtJTF
	 Z+OwWBnbZn1CmSSaXz58ZtYwBphWYYnQtzSw7aKDx4KPzAmuOzHY6iNoRuhiHy0VOB
	 w1kr9y7YY/T+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDCE6F090
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649863358.24227.14213561263369375700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad6ab6da0ac2da6ee4e1dc86e1b08918460609f643876874289abb97a0694dc
Date: Tue, 23 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766498633
