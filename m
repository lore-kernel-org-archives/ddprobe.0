Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD9C226D09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749510594; cv=none; b=WZjZmY6T1H/YDJM+ocopEGyuc6DbJbuppGemTtimVImOgG1JOptkv8xbeHblYclayjg0jTutPpuCByNrkGkjbMqxmFdbyhb+VZ8lC1DbLs7PkBA+PQ/4YugJkVtlnFhf36EkXozUYOIlTwlWoyH2VgiyIntlyHlQx2qg161ejGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749510594; c=relaxed/simple;
	bh=dxUrzdOMpWWRN3kRQnxTg06lTIWXRpRr33uc2LA0iSo=;
	h=To:Subject:From:Message-Id:Date; b=nx5oGXCEbRo+SuwTkk4LMGWoOFQ+A6sLTT8rHVZl/8mQoyCL0vqLM8WTMhLJFlTUS3/fsM+uNtuq9g3EICZUE1JXnvXULP8ps+EdfDzXSXjGQ9HpU+dj8tcZDmjGWmbDfAjzLqqatAGcTuzycOcimMh0lDf+9TyGpw9wFmaMnkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfHmatTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfHmatTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DB4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749510593;
	bh=dxUrzdOMpWWRN3kRQnxTg06lTIWXRpRr33uc2LA0iSo=;
	h=To:Subject:From:Date:From;
	b=gfHmatTeuPq3/8U6WCHkehS6uDvC3U+pojvNgUw0FeVn7Bvf30gXZOGYNRvhNvd0+
	 4m97feRuBVSybwlmM2NXXEU2g42fTMsR/PCVyir+0CHhG4YNejP4g6joinuzItCiUs
	 UGWH9o6ofWCKBVb0UsQi53H/v0XcYeif2ejcAtILD+3goKqL+FlmOnI2raoJV/UaIZ
	 Jk3PzD87eqwIjyzdbI+xmFCCLBZrnyqI41+bzy5xFJU31BM4N5ldDESZP5pS8bKfXO
	 UCx1wkJEaGztk04sAc6F5BBw1vefwYkY6HV5KExauIr6Nvps8cBDQI7+e9DKtcVN+j
	 QWNA8oz3lxgxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B3C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951059358.21753.13786496448007822358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be54c00a4dacd4dc5051d7de1004ac74bc5fdfe28e98b0a960b2f890c7334998
Date: Mon, 09 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749510593
