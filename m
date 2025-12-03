Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EEA24E4A1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764761574; cv=none; b=dOTnRe0cjqk9h3pPZiBoIZebJFyzXXYGSWHQiYbo2T3/JJuvcy0TtWftcof6ud1X9bRaB81iq+1aCR6ll7vTs+8z7iAuMPnLuFi4xVT8IZ3tWXVuDw0yiLXlvJC8DYY/Go4vaOlEUYgFbKXWQihQ3+u5BlBIkSnAp9QSVcey8ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764761574; c=relaxed/simple;
	bh=2WK/WDh9qm1knN7TiqO7dqlPRMyyMwXyZN/XtIjbeSA=;
	h=To:Subject:From:Message-Id:Date; b=GcFMk9JNe0DrIoxK1vKkGEPaF21B7QQm2Zb9/sMIUa+7EyOQ2lrgFzzTlnUESPL8ImsfpWdKnN+E2VpmXp2HCXb65Iowio3jv3Naa+qmxU6ZxpByvetL27rWX5wxwCNKuUohb516M5WTh4zw+mjq78lBqZB/Jg/QfGMEQZ/OMBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UA4SmVRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UA4SmVRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53FAC113D0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764761573;
	bh=2WK/WDh9qm1knN7TiqO7dqlPRMyyMwXyZN/XtIjbeSA=;
	h=To:Subject:From:Date:From;
	b=UA4SmVRQcwHBzDNcrPVhpRV9eNAF4SedXzR8Q/DFYJJ1hNfmr2VC7GOZggKL92iL2
	 aQP7bbyrI4VDZeY9YeQ5xHXOcIYXNyd2rNHaWK0i7HAjo0RcosQZT4yVj44FR83bu2
	 fbdtfgDXtgclhCIeJZUSYszzWe9e3fBNWFJg5k+whdkdblr7kv8e0lGQPRKnXnJtUB
	 IpC8cjmSL51C6YdjXIsFyCoue1yFeSCfodZDQ3sTO1afbN8TN942qbFMeE2fdqMMzG
	 wwhMR6vtnBUgJhHsHruoEn8BuZ7K9ejq7NNtmo1qcvI3HqNWIoR6AbjnYsFtrdsA50
	 9NYEyrhf4Mz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D6ED12D47
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176476157359.30081.13197798955286800151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6024bdb0bff940a1d0318684f438e3c20cbe9a12cdb465382e5a8ccf876a3f65
Date: Wed, 03 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764761573
