Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F5B31E842
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786449034; cv=none; b=svE0v1VYJWByXB+O4rjxeaJhszcXdvkSOSHLO1bMbyoCPLHsgDgLLC+a3/L93v2qyfESMF3TPEImd+iftX1kogmuSadUCWRqQkES+2ezPTBxk/r3dtAXlXa8f8ccWISdjuk9DtBpEyU4o0mDIpGODFxEqWeaTvuley4KvLeDMtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786449034; c=relaxed/simple;
	bh=9v9ELcRsfH5pQZhTbwLQe3gSJhTc7pkN387sAAlszhE=;
	h=To:Subject:From:Message-Id:Date; b=aBK5mHArIJpDTmncEj7/bntJzqCe5BNkuJwHRjVc69rMVDupE1kz3482qqgo8yemd+J+tZtMy4b4pQTDMks1ahVsUEXrV8SVbLZeWVjkVFtEZ7AOBE9FXUsur8GZ+As/laCATh871XGUptDhFjpI+J42xMF63s66UP6V+CDWQA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzhV+qnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzhV+qnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAA0C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786449033;
	bh=9v9ELcRsfH5pQZhTbwLQe3gSJhTc7pkN387sAAlszhE=;
	h=To:Subject:From:Date:From;
	b=dzhV+qnCgEh1cHlpKNAjBURLcAVfHVURmoprxcRxxQbC3C+RMGZNAYZl/0YnHtY1Z
	 PMKUQvaT50YjqWp6uOioQWAgjuA1wAtMtF0X8JG2t2sPjTMM1Pny8WDmhtjs0UDn/y
	 rjlKZzMp8Jd8Prw1JfrHFFh4UmQwqCst8GHdQjhLsTYkjxYfH2D3JgdjnW92ur+503
	 b8aYp3JM9vlnMedeZTXa32nwt58kG2tD3t4kB8d+akwEKAvrlVxBwJLmUbgQAdQn1Z
	 3OiopfteXpPhdmiP47acFA3ApUph4BSbxO4BAIeUZnklTtWTz1tWTA5IRlj0DMtUWY
	 TIIktUiGYAPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF5C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644903368.1479.14423619134369481391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a133f1b5274e4c4fd78e2a7f57ad89d946553a497a8f059dea6dc0860141016
Date: Tue, 11 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786449033
