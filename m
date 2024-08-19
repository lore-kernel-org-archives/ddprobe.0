Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5184C634
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724030154; cv=none; b=OeS1piGG1tFlqs5LUjd4NyPosc0RzW1NZXLNOEZn6gtSpFkJqJkRZgTYo3C3cZ6wGzpgsmhod81LI3xkU/vYfWv75yavhHSRsAz0kvCSEW0duZriBv4nNXGyLhi+KyN4r2UWkg5JeQn5uhPq+KOe6N1XfzEmGDcOPikOjwoPy8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724030154; c=relaxed/simple;
	bh=Z/QHPXtmY56UxYlZdHRWPOnwiL56U5kPk5GzSnMzcQI=;
	h=To:Subject:From:Message-Id:Date; b=NSxfBaPUBBo1Oqf4RW8y5UC9AqkNt/1FTZzojeV+34Xu/v5AFan/8Xud1FSrMJCxuleCV930qju4ACq3RdSAZpG/JsjhwLrRHAx06tw0tZv+k6UVflZWRHJ0yRnY2YBQp0t6POzD6ZUzFYj0+rGc+kGksmqSgSEz5a1r92MnqVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgrjB0XR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgrjB0XR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C091BC32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724030153;
	bh=Z/QHPXtmY56UxYlZdHRWPOnwiL56U5kPk5GzSnMzcQI=;
	h=To:Subject:From:Date:From;
	b=VgrjB0XRIoaKVqlU3WaXgdD6whC8fi2Zy+9FDuI3S9QyrvqewSLpF2A1Tc/dox+SE
	 K8pgq0sHWhxYwCqpy+QanfyTxKG0l5waIprcVYwZhOiw7gWFzxefy4tibDHrVRA8zd
	 8b9QzVi99d/lqG5hc1vgHhaGqM1G1xeGZBmC2bWqp0yINVxV0AkMhF4Zh5XRroZR07
	 /gVRhcZEdjPJBsQgNoOaXvYLQBkGUWL1QNlXnpXIpTGgLai4i7SlWGrdKUB9Swkzro
	 j0KwB6mF0ZIQsVJUusDKd4psXWWFT1U/aRipeWD1MZC/l20zysf0AFRkpHajyWoH/n
	 iUndWzCNkzY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1ECC531DF
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403015363.13688.5083614654402096250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716d715f978becbc7f680c6a13c5707fa917eca8c98349b339952178bc7a8d06
Date: Mon, 19 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724030153
