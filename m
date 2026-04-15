Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26642561A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776242853; cv=none; b=L9S33FIrflShHLO8Aw9jL0OoqVxQPY7K3Po2ZEuazbIsCbYLlFcNYe0M5U3aYpMQ/T7ZHi9LmmwOt7xrPDnwNv5CLUk41CMbELPLMxUR/33tsevMH/31to8UPcLEY0D9B+I+HfG+URb8FWNHuN4fknjWhPWWDC+J21Lksiuxi9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776242853; c=relaxed/simple;
	bh=3N1MvwmA9eolq+LRQ7H0v4kn/fKimr9OnyOfQEtEIm8=;
	h=To:Subject:From:Message-Id:Date; b=Polk+aJRqctLxEw1NyqlDhSRl7Vm9MjOdNpALbx50I/9m36LdKq5SjoxPCUcU4M6hI/SUYlboZ44ZKrIHlI6JoJo2/RzlQ+IRgF40WWajBdfs2HjcD0dzA5+o/MH5AXQUMBCTAXEjgUn2riNkzhpnHSa8KP4tGI1J7CbHKK6S9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V18UFmo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V18UFmo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7066C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776242853;
	bh=3N1MvwmA9eolq+LRQ7H0v4kn/fKimr9OnyOfQEtEIm8=;
	h=To:Subject:From:Date:From;
	b=V18UFmo617bqtx0IT3elmm4fniv18E9xZJY5ln992UhdPsgvBEB6JirqoSvXBlSYc
	 UzKQ3kntO2DN2o3lR0N84IirbCRxEaEj4O5HcH2mlM67QiHO5GkY9F43Of8mQDU/gq
	 DP4vJgqlZOkHGDsdAxwpLH1zoexst+3ikQRyODd/pvAWnaO79hfJlzkmz+Xs4bUGDd
	 pGq36fbGTeHuZ0XX0jYg7MuZ4HX8IqXhNARKOrLJU0imWJC7EgGJ1ISTFIUueuHuMZ
	 mjVbkiGZ1t9ms2mvLv4RRVqQ7IKwZ206nXbfVFV8/RpWvyokcNWGTBOVbb8Q9zO+J7
	 7P3qtLpIYqeyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E1FA0C57
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624285368.1949.17281503444453148645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49736670b1ec2d6eddfda20fc7a87ca66b52d3929a9fa0850dd172ac44d1e519
Date: Wed, 15 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776242853
