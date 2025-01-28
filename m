Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378591AAE28
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738077954; cv=none; b=hgG3RGpJk1Kji8OzjkA4Noh+kWS+fMsnq6pU3iJccMIU8EZZ/+aVdkK7wdkaqa9yilEi0xNVC7FsT1dkBgBGEghJkIzcF+wiP3LC+WmaQ/HjAkoW94JBEHbnUC40ansUYhxLIIjPMjt0uwdZgLFJCLrBgOCuEOvghSTVImFEDws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738077954; c=relaxed/simple;
	bh=tnf5/B28d4g3q2hV/wGQ8+qLmJNJJZJBVDh3+wdzUJs=;
	h=To:Subject:From:Message-Id:Date; b=QeNVTqTkS3WIfZz3QkcEY6lLvlKNG86OEK9aKzJH6rFO8kmtD7cEsd7nDhQdgr7ixvmzTOhLvD0S5/YiFLoXTwDpaou+PO4PZRZoOOd+9Auboyko79vJdhFDUSOEwMNTGppqlNO0eha6Mh5kOETGfpQWoGc76W47Ds7xidDHnF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yf9lOFvy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yf9lOFvy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7109C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738077953;
	bh=tnf5/B28d4g3q2hV/wGQ8+qLmJNJJZJBVDh3+wdzUJs=;
	h=To:Subject:From:Date:From;
	b=Yf9lOFvyf2Tk9YX1aEXWcFe05ttV1zVuPTBkn1N/mLXtjIaO2jnWHlpCP+qJJ2/pj
	 2Fh8E7lso7OHlp99lI8co4tH3JMb5WOx8muLF3pftW5HUluXzY7MdLRJPZULePN5r/
	 F7a67PAkk8Bsx1amcduXtuUoWed4bcmKzcy8d74FzQ1hzX5WFFjrKPcC/H2IqOS2PR
	 nkos56HTyYLZUsjEg41yuy8KKcFAdhVxPm+4lYzIYod/nIb5REdun+ilhS3QtQCxs+
	 fP+BDyyIK0El0QwAAjSKL9MNaBKNY0at2ofolPQNMI96JcMmxPG0/Y5EUMZw/rCwfc
	 llZ4jTcflF8dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C7AC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807795360.17008.15136420076552617114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c86d31c70f5e282a7f83ead8501daee65524e2a69bd3af5ef12f5fcab6d0e2
Date: Tue, 28 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738077953
