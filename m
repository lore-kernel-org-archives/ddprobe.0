Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B093211
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725420954; cv=none; b=NJg0bHrCS8Cb0uF4nocSOJ6xRV9OekgKBgnzcBHWbRhLi1snXLsfVO4jpdLdsnY9lz0F9eYyBfhEM9EnmL+xKgoN2FF9DGCoQlkrMQfeXgyvli0moZNWBtPLxOWbD+cGlmVodXNh7a0OVC0OjBygTc2swscTdLu/lWnJq1g7BqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725420954; c=relaxed/simple;
	bh=TBNb2JecIur+Sj6gPlaB2g7ib2xlvnuvJkeqGgW46ZU=;
	h=To:Subject:From:Message-Id:Date; b=fZuVfP+1cmv/6zi96XmefOA20Mijg8pzO1GoUfXBxYGwXLpNbt8sNpl1X3sz2wnbUym6GoUaid5DBOabfwJ0lxQjD4y1df5KvmVY3qvVTUA17710HW0x7lIIQolLeCPBq8jCsNed9O39+AiutxTITtX6TtCkUvv2XrTHK8iH480=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUSfeXkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUSfeXkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A5AC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725420953;
	bh=TBNb2JecIur+Sj6gPlaB2g7ib2xlvnuvJkeqGgW46ZU=;
	h=To:Subject:From:Date:From;
	b=EUSfeXkWdSnLtyDTIvhGD7YJP+q+KFcKUIgGO1HR9oK6T5w+dc+mcb0RwK0a7++FR
	 gfWDBXj19ZTZvsqpscqa6Kr2enpS+qQNSYHY8huV52loTS0PFQ9IlCrYXlc/51rVkU
	 JqFPv1bSevSZucg2l+f+EJ3RK4PF+UnENlc6LybU2swv+zGtrBJdOxvFOYNDMag/jS
	 bp3G2PrTwQMcQFYjJkgWC5+r2EusG6BqN7grlKpCcHqojFEsI+cxHgavMfgvZ3fAp+
	 iKl9+lLxJ1IEnHjpX9w63jut4W8B8i7cw8LhV5q3aQ0ESVO06JG50bcGzc/VLM6qEC
	 GFppfaBYXKo8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C1CD37AE
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172542095359.9117.17768007704516232901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa87a34dcd88f4f2bd4a516fe22a8919ef630f51ab5cd6709fc04d065427f08
Date: Wed, 04 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725420953
