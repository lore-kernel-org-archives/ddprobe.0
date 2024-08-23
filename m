Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D36717E01E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724414154; cv=none; b=mymoJZgWZUU5w016DHl1msqZzkCn5H4LCKwEhlrcPuHPebBIlSKfRiR1Z22bu/ooyeVTx/vDP7pHb9K6ZsTBNJip2SEqBAyZV9K7S4XNQqaJki7CqrGv5GZgTfXE4m9qPRvq8UcqFlT0EnBbvTi8s7XFJSKUmOPHznMdLoZ/TCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724414154; c=relaxed/simple;
	bh=iwTpZzmaEkWIveAojU8QblB/DHSIqvo3iVWPaV/v83o=;
	h=To:Subject:From:Message-Id:Date; b=TvdFcDeO6xWcJFc/pJdQIQZpujwypilWcC82PfBM8loovfv3MeLvkV8HoVxPCRG9AIc3QAbXu+eDs+kV8GO+N8eJSWUrkgnWCCpc3cctyPa6YMTo6gd9/DjBWmaCldBs5IwDbrk5rj3TJPzZO17X2grFh+LwiqLqRwM0Qfr0KlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pc+LMJVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pc+LMJVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64E3C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724414153;
	bh=iwTpZzmaEkWIveAojU8QblB/DHSIqvo3iVWPaV/v83o=;
	h=To:Subject:From:Date:From;
	b=pc+LMJVOK8FTjDt3GdaKN+3ju6A1d36PCzuHQaYxDzMPjX3Q/4VWmohL8osEhRYF2
	 DBdLbAE7dGiE0G1X6Bsrvlg8Hf5Wv6w7Yx1kacneF1w489QDKh1ujUTcyycHKvk+g0
	 1y+WkWuNzR6OjZ2sy9nylf6vIi3j4izupMQFrr8I+zezfZnfL03rRFwcV+yCmM39F+
	 W2gvnkzAOqPgenNb9CMAwJoeQpZlHytRBSPpaIzbz8xQa8u3bOqwv0+biq3vqkl6rw
	 R87arC5ZBOxeYv2yWFaWB7so8k4yrvFSQ23wKR3XTgFZ14nFO/e+v/zr1vIlOrg/ew
	 vFaBwp4iVS1Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDACC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441415358.7247.11910939404841093210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d547b3711202f000e4d8f3c84cca2e4d4695130405e1bf12ec20d39a5a22c5
Date: Fri, 23 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724414153
