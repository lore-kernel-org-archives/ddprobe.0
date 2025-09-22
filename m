Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1252820D1
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758569993; cv=none; b=RFu/qQ3fU13ycnJLAdC6kHDYP20mug9blT1HhELtVD0kLLO8w+G+4FT9WI+DlfWBSasf0ZFGhHpxaTn5NCMCusHJI0WAsOpGftEgBc+r5n2ibyyVv4gquX6/INRo2lxaQsZaNOiyhHAm5WxthixlBjRuMhswcE+zviuPjavR2tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758569993; c=relaxed/simple;
	bh=prYw22xFJmaZ9tzTim+gGzYreQBRu0RWZFonhHYBSKw=;
	h=To:Subject:From:Message-Id:Date; b=PwcGwH403s72CQEgXNHsk6Dnm8D8fRXUnVwYiLjdNs9SGdC2JwOXuOgppPOzWYUy8IhBnhYaAkSld6qvded+BVGXbmvcZ2mvgmp/SKWmuiJmlWX9rlBBcuPhnKwDtK9XbWWOhPLC4D7fY/58DGqOgMlEed5w7kXvpi6tcCS5S/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQs7uu92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQs7uu92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FCBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758569993;
	bh=prYw22xFJmaZ9tzTim+gGzYreQBRu0RWZFonhHYBSKw=;
	h=To:Subject:From:Date:From;
	b=jQs7uu927t7lU0XhkfH64EKjcKH9g7EK+jk7qoygCTKo4z4nWchydcI1hz+8msIvo
	 6oRGx4meR5DvHQ83WSroPbO8xDZmefgNktJ+DBGK5H868ARBivjmjQXCd7Ht/JPa37
	 jkhzDB7vn6uJ4ewBctM8eAo03jwj8wyu8HzPb5cM+lxkvXGYhSPKVLzZ+S2LzJpFFn
	 xxs1fGJq+9VjM7mc/4BtZPUA17Kpyxp2AlxFNuC9jCPQvfXQTtrm4U3dHfSktt+Fuz
	 qcQmSWS7+jU/SmBC0WKmigr8VHZyVtBt5B0ybEw7PbqgyezH3m5kc2uc1lAk94Klgt
	 C8EZsElSj6/Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91960CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856999358.1344.18307557839482990557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925dcdb093b801645a7fccb3078fc32864287e24e777d2632794ec4dcca25a01
Date: Mon, 22 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758569993
