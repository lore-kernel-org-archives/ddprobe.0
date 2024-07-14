Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E92F32
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720931423; cv=none; b=HIn1TqY/emwIkS+Xvvk+rj27W3Jol8GOBGU3wwrxXL0mUAtojGIdgUcJRyJ05i3zzsg5csgusRG8ZFC4fvEFQBzeNfnuC3xoqRnX24jmx6EmlgXLZWqPJY7nnQJv3BXMSDxDXmi946ZXPDNaKd7uPjlFmim2vE7H6QYP2It1zCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720931423; c=relaxed/simple;
	bh=BzUqjhzb4W5zdAAl2cgbDydBBY+j9Cc9oObFMfpruFw=;
	h=To:Subject:From:Message-Id:Date; b=TULaa62q7zqOthdXyYqWHatAnQZ+ezYCJNMe9YMKYXDJJ3VfQ7PWwpWk00YUld1i3cYk0vBbVOHQq7XDYqKfgyNmYOUXFxZr5VUhKyDYzHVrfLRJhahkKVg74kzWksIkfYAAjPIGFhrXgPCPuHT1I1W/5msC+3VPdBpDdFcC4XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+ul/zuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+ul/zuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF8AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720931422;
	bh=BzUqjhzb4W5zdAAl2cgbDydBBY+j9Cc9oObFMfpruFw=;
	h=To:Subject:From:Date:From;
	b=D+ul/zuvmhzg8wHwQJo2EmMr/pbHVFKBQZSIfjPJKi+FkPbbrGPoHSrYq3sc2DsB0
	 XOWO3xnJ/FRXBFHXZl+1Xq2ZDpLp36ESjje0hOwD8Xory08amiirrLtaWbsfGeECZS
	 F/BHK+Drx0RhW0oCXA7JZmdMOTF+vK9WPB7fqkQN0QIODzpIgv3SENdIPNzonrZPTG
	 ujPn07iB4GC62VrvhJ/fwWe4iGWJcmrI+OdT10h23jhM9jOLLE3+kqRwKCOZ2kJ6D4
	 445blXCQTmL5Qx00FAgUA7AMteOyvsK3fXIEY3FbWhKifnav1MC78q+bE7VzmSqthS
	 sLN7VIDhRqujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A32C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 04:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172093142276.10505.14946890615882555166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52192a9d5d43b9dfb509ae6489ca1557c101095c06a03661ceb9544aadae8a35
Date: Sun, 14 Jul 2024 04:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720931422
