Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2727F4C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762209594; cv=none; b=CE1fgqApOuphGQy9F17BcOWoYlrDrDoS7PZx1qx48eGd8h00iFOIWMjJZ5cg02kD+5ASVQDaLDUAnUSsNzbv3Bfhx2gCUqCW5quEg2tfU0jeBE1/3mUrkcgqk4B7k7AIDAn1bp7cL38LuB77lT7wbbN/JXuWVq6T9tgteuXDwxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762209594; c=relaxed/simple;
	bh=CciWvRa19qrdDXrVn0e2+/3s5AUyD7Bkpl6Evh7/rt8=;
	h=To:Subject:From:Message-Id:Date; b=sOO9a1nGOHZYI1Ww5ioeFobtpGBZKHVq1gWDmjFLcCAU8NvvAyNWyb1efo26NucmuhapoxMZ63wIyIriGEMykbWTTf+3T9FYreHd/TLJlXvO1ktORK1bx0em+UgyefbuAFtrhP+5z4Ex8uaOJKfI9+7wQU9Vysbg2o04aFWgSYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBgjFzQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBgjFzQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C839EC113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762209593;
	bh=CciWvRa19qrdDXrVn0e2+/3s5AUyD7Bkpl6Evh7/rt8=;
	h=To:Subject:From:Date:From;
	b=dBgjFzQdo8UNzH3ab9VbHpX4kUY5/7jrfrEjUBRka9rgL6W8KjcxQfwqjdRQWtxy1
	 TCYTOPd6bzDzhN+2epGv7A6l5rOljv/S7c+WNRal1dIq7bBxoRLErVUNmdiJUWeQ60
	 X+8I195FFQgaPMandKrXIl6IwV/CqwCZpE7wbA5iWXzGfA9SptEcgJmFL+zDY8ps3m
	 MYMo76xZsqE8ujwONthsFX+f6qOMjYqxNkZcxF+y8Kv0yxNHAhVpQJUZeDWYz8BqWA
	 6NnUzRUo5993RBGwdzM0FTIh9bK1/WEKnaYPEel4D5usVQY+Ws/7/exROcJ0QCk0TX
	 9xN60w1iWSzRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC382CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220959370.30632.13288912875270048657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f09d526abd6cb463fe006298239798a806788061ccb9531c6363d9ea43aec1a
Date: Mon, 03 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762209593
