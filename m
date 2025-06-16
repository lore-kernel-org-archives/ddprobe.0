Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D52A4A0C
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750111795; cv=none; b=er+dmEEZsT0Vin1arifIYCcaNFhy+iTQIHvPzoRfvfnRQ8s1kV6ot+qvu7O7K2jeMYduJ0UXU2BF5E9g7/e9MS0cfJbBZKv4UH9TcZ6qiElslnCOha34orskRPIaQcgnAXLv3DhMAF62cUSESBd0z2/vnCF0sEvarwzIt0orIb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750111795; c=relaxed/simple;
	bh=FHEAWtWIxzXFLOsVwGnfh4zJrRs8RBbjWCajcqfRGEA=;
	h=To:Subject:From:Message-Id:Date; b=S+1di2pPXdV9SIzNQlGSN5FJAsLaY0xDJDyXDPz1Y0ZZ44cyHAACGHYgF0vgDYWwUXQiQF13cOWsPykgPTAlFO+I9n8l2OLHamu+QBaPYsh2QBGsT3G915F+lWIz0DvnYR++k99DYv3l/meQ/UTif+QBvHQ69Wd7ta0em/+KypI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hgi8tTfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hgi8tTfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4067C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750111793;
	bh=FHEAWtWIxzXFLOsVwGnfh4zJrRs8RBbjWCajcqfRGEA=;
	h=To:Subject:From:Date:From;
	b=Hgi8tTfT00TOkowpbCKiWTE6jIek14kGffhYWilSMtYq4QtovNbKRyZrBDIXJoLbi
	 OBEKt0Q2FHZyR2HrBVcd3ihyZHkYlxUteK8qWD3IiYb9yB0YmPoQpLB3NCAxFB4of4
	 JQc23Ht/lyXw7XsMnghkRelyORf6y7O5hxlMQuMjG15CM+shpQ02m8jqLZGNhzBCqS
	 uiDZiZMHsYKy5rjJFQr+ii/0QgZDQr2rneL8nTtVrp33HVv4yr+qBGyqE0ZGugqCq6
	 UoS00Ktn+8UOIf2VH1AkbE41/ZHpergAUlLSI1WRwNIXWcXTpShFH8HGfeBdvp97/M
	 wQa7Z/n0YeT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F06C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011179358.20384.4854684027543388213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7b6ef670aeb636143358d6553c41e9d1e0b041b3bac0bc06cfa769ec56b626
Date: Mon, 16 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750111793
