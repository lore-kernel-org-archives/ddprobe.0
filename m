Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30818AF9
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723316154; cv=none; b=A1wEOVbWfbYwFmZT6FVpmZIz+Pa2/YvOpum1QvgbpfAulkYnqP3fbabzQpECovSF02lihPx47oBdaBi4D4urfslvVt9yYOxn4mOCYsqE4EN3wKBoeX8CpKInRkUOqZdKk/1beo017ql1Q8Xnd8Hdxnjl+b3RMhK7geCnHP32y0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723316154; c=relaxed/simple;
	bh=KockF14XEJzbaI4aFlFlZjkCaBB8zGjBI5lQzlaKCjM=;
	h=To:Subject:From:Message-Id:Date; b=cjOqaADyDD8BRj9bZMgBjdsA7gROzpe84Sg89fE9czXIjzExE9WoIWXTNIhAfCUpqrwKhsKgRjsEAbzCYFszZcnfI1GEbMAPWagjXsEha1cXS/R5bBTS6LLYL4X6A8FGhjaT6LMNfoeH8s4pzHKR1gVgLhQgtSyIOC8lxUpQvZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezxBwNnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezxBwNnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B10C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723316153;
	bh=KockF14XEJzbaI4aFlFlZjkCaBB8zGjBI5lQzlaKCjM=;
	h=To:Subject:From:Date:From;
	b=ezxBwNnZ7/rVHc9c1/76KWEE15jbuEgGrotuKVWXyuYixU9I+xoJriopzu5F9NUt9
	 G95StJ/AIoz1F2bYnhMRx8XDlU+B0YtdCtox/PHgt2ePdNnRg3EkCVoXdN4v/xz0M7
	 Rox/i86zE0BraJlaWdMP14fTIpxLcNVL9d99G3G/2FkJ6H8Mm0imByCbkqweiq3U29
	 YlrL2GB2pOn8fj62ZKVXnhy8/NXZGvSamc5LqNwnzc+6IhcOWtZbGKKUetE0pC9KWN
	 1/MsvoAZkhpEnFHEIJIsdecAlQ/7Br8+MiruCGryMMeNsmRK/+DEKwGo6DntqOcF3q
	 QVLjuiaIywmpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A053BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331615361.29882.12987583304253683500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ace066bf451119228c4ffcb65d00d5e22e999667c8bf0b08d541470fe0af41
Date: Sat, 10 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723316153
