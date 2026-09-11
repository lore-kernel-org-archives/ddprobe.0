Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3072C37F8C4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789102834; cv=none; b=IT5eINwnsV2jrsPEuBD0oUjrQo36M1X8o+URzkWG8IanCcWShTGg9gZKZErgExVV5HkPr5LM03CWnYRAuE9chHQM8P1npKUuNGsBxXUzxXmeGKhxBXPrFIfS/0rKpiziQzg5vxYnvL/ZYeCbNTOSYEbqRBztfLV16Sk9FRhUjs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789102834; c=relaxed/simple;
	bh=41nWGdOjrfQ26QfjUXLfkJVl21WhqKXUthtJKBg8QJw=;
	h=To:Subject:From:Message-Id:Date; b=AQ4UABsSr4ungVa8rFT2doTqDIpLXnKm1ftsRbgtl3wpyIw2r4eLfHUzTy9LaN6RD/rP2uc80xRRpnGP+IqaQgrprYdJc4awX3onX/Km2CCV3Zz1SUJOlcXpib+kgDMo10+/l3gk4WZHWJmubjlPD9XTSGTh9Kzgj0gON2LBcqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hB8eNSvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hB8eNSvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D257BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789102833;
	bh=41nWGdOjrfQ26QfjUXLfkJVl21WhqKXUthtJKBg8QJw=;
	h=To:Subject:From:Date:From;
	b=hB8eNSvjxj2ZxPbilU7rya7OKellE5OYeXwwAYn/5q3QdKHvJhyiAXhjHQRkuvcUk
	 5uJwfKY4pD34tstrHlz2CbGDArfk6J4a3xY715xOwkuIEb0PuG6kvNcqMrpHu+oInV
	 prhflzXWioRd5WIy9QY9hmYD52P6ssSMtQNFfcCL5A2zGFedKPkgmXQDSvmJTTll8Z
	 3y41D4/Qdkf8feY1g/e6+kKeyfZOdVJU6Wzd2wn5VfvtEEOaGg7xq5dMOl0E5pXQaq
	 sA8/HdpF5esJ+Iy91gGb/4w75GC0pom0XM2BYTs71VNH6L/Q0p2OPLwWdaXygPcJob
	 1nyQhaTJc0nrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5C6C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910283368.25900.15806745963068184978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba9e0a7ac9b8b8ee0de07e3a3ec2f316642ccb61a0ccd3d484829729e2b10eb
Date: Fri, 11 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789102833
