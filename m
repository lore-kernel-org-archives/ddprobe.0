Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2274719F461
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749483594; cv=none; b=oKkyC3sNSu/QepPoaG1WmowCGmhavj0haM2vGbBfLMoAHu0dCOO7YZYDqIemLlWKMA5FhxOWpJlNWHMjuFz1qEd8mEM5uBmg2Rfeet+FGXKqjeZPmjaxFlozynjdaj+TpEnV7vTJedT1oPVu/4a3NxIrLwVaygnS9II5B1Dvw/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749483594; c=relaxed/simple;
	bh=JMUcw9lOx2ZifRLqdwNRWJsmnVIGVoC1K0f6XFYraxA=;
	h=To:Subject:From:Message-Id:Date; b=XmHGFhu9gfv6WHEVdyNMSPGBXoAgkBXaAlc/vKUP5++C/iTb0auvLNtRFSQ6L/sfM7ZKRUWQiwdQ4Z1WCSeHBiwnbHLatCoU/+NTt+vTM1bMZAKjSA80/98A6LLcv27qO8t3xqcPY+tlByu0adGBTMKFdYcCJ1KztTHr/Gpy7zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHRpEUd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHRpEUd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F280C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749483593;
	bh=JMUcw9lOx2ZifRLqdwNRWJsmnVIGVoC1K0f6XFYraxA=;
	h=To:Subject:From:Date:From;
	b=OHRpEUd736ooSl6/5isAYBlRDw0K3L2GUA6FFgtV6bF8PYISxC8cz0SayQh0LCkfa
	 AYPJHlCgJb9U7xqqoETce5icBqLZYE6tKdKiOwf3nux0KWihZQaaePclwnd4HqpcfP
	 dFogikmTKkSl/N5SZpBrkvWcdYgqS7hr5rYwqtkWK66nTePYEGOP/DF/tfgeFgwoF3
	 Gz64GdvKWS1nioTBhxWSUXLoSwIAdGwhUBXyKHuZ4t1Pe4Z06fUTwHnSQxQgfrlPjR
	 sPizSUyDbMpCzLpC/iueH7xO0Y7X4wa5NAwTRzbUMTwHNmedThj6jxjvKSgcUGTmGA
	 6b/iZPKjoCv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61AC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948359357.14733.498669593577430731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7af21f89b024c2aa12a19f979ac2aa717346c25dba68cba18e0fcca2f0b9d60
Date: Mon, 09 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749483593
