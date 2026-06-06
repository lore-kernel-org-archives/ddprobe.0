Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095084071C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780721674; cv=none; b=hLHdhxUOc4oksUK594mEThfhDnsg1WFUyZxcBbVzePPzohSJk4eORxWvorAceIsq1u2pqdNE0jufUeea3M36oHg3NcJdla9Q67KSpfIc1dRrJR/OxXIP5KRBYsigL/CgU9EZYWI3hL6tIc6PIbS+yFd61KNJITuVLYH7iGde5n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780721674; c=relaxed/simple;
	bh=LtUP36/U5GIxMh1I2CX4aHCbIV3y7qqoG/wvhoovfCk=;
	h=To:Subject:From:Message-Id:Date; b=RtesjLRzBqDM8AaQoATkpZhCAqbFDPmaNBCkdJrBPbRYPU+b9UVbUt15ZfK+FQRLIRAPhW/jxSiUjOuAx3igSWcX1xe93431HZF3uTBVwLo6dUxEHvltHKm/8Bj1VkjQUQ3ASMoVZsUfM5SqWIaRjbckLCc68Fmror7vOHsVuK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYX8q11h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYX8q11h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DBFC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780721673;
	bh=LtUP36/U5GIxMh1I2CX4aHCbIV3y7qqoG/wvhoovfCk=;
	h=To:Subject:From:Date:From;
	b=mYX8q11h06cr57DlqbUDbe+ekzocn0MTLGb2mZCy+uednu4FR0ZWSpdQA2NS+Rywy
	 Yvymvr8ueopkfqgtE9owOEYCkkgurr9jXxOdsoulQhVIFo4t7QWpDtY5fx7ddoe3ma
	 cFpYUjW+oGmYlu6LIkIksU6j5kGL7I7RKs3pvO9+PwSdgNfHL5svbRqisCc43QuNY3
	 JoJZQOjkfO6saQ/UaukSkpfyLcofEYvuOFW6URCVGfERJeGWEXA3+I2j397uFfS4Fi
	 eyhxXa3UcgQdUwQiVmN7kT1NLzh6B3svZdeb8StvdN4mKgI7eEa5XUZxbWp7XOaHlV
	 B+EHbSq6W75NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC00ACD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072167369.555.12705497866849720251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a050fe9621a0c18900458302c17e658329a40c6862fc8b9058b2f4473410a055
Date: Sat, 06 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780721673
