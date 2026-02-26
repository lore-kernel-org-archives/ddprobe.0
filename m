Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085CD37647B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772106894; cv=none; b=h3gIs9dZdz9o209tlZU4go+GCZSvoNT6x+ZpeJq/Yfp5DQH3aN4gff9YSavhKPVVUVx6bNRfl1nFf5mUP47hqwEIIiqzZMCu/LbsbqaQ+vhXsmTfq8aZlR0QpM5Bw7xKs1JCEkttOKUoL2cDYUeYIlVsIZddXwqtIHoyXJBS0qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772106894; c=relaxed/simple;
	bh=LiMzeAZRcC6sOhaySARbZq7F1uWevTXBzJ4Tmw86KNE=;
	h=To:Subject:From:Message-Id:Date; b=MhxaQY4WBWjdSUPszSbEVKNRBUYXguvV0hBrOTpvSZqV+0e2vX0ICiqM5AIO+T1mDdHxlBjS++neExHjhyaMZ33ipR8FUcVQNCAOs1jxz3yCL0Sm6Re3T10oTJP7M9NZSB9tVwtlejQFSXpH7mpjWpFtRbIb3xWQoqZxdc1P6TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxv4dewL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxv4dewL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E1C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772106893;
	bh=LiMzeAZRcC6sOhaySARbZq7F1uWevTXBzJ4Tmw86KNE=;
	h=To:Subject:From:Date:From;
	b=rxv4dewLakymU37YfwzUPVTQwKQRitBS8sLLtzzlmbdiUS7UyC53NUH7AKggHaEtF
	 pY0CeKR8uemCwsRvB3lef74fukXP4M4PJDpEJdleOoFhXxufIiskObTfVWJcfQGVNn
	 P0hmUYPjPcqh9ZLC/n2jN/fNxD4CrKRkVPQeQI6M1chqrlnDS3mosy87cvsneLNj9X
	 0IpPh+mhGNFnFNUsLBmz/t9Mc5Zsr+Ik6fenL7WWdWQIaeVbg12FdPNZs78eCZSsv5
	 EcOPTnYuDq7uOWZ/BqZxx/MjxGZDMx6QDxu8XWlhipz1kb8Yk7aGklxyKK1x40Ovp5
	 sV6/RH3DlgsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE6FC592F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210689359.19194.5920900910718873763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce26ff91ea3d86068ada3bbd8794c143d42891ee12da430d4539ce9350431f4
Date: Thu, 26 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772106893
