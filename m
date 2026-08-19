Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAE63E1218
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787136034; cv=none; b=YYwNCC/Ol3hSGJxsNy5oZo9/WO4CFBXTTZHbrpcs6WTusgK8TISxOsBX22OAHtmqHCfILENYaF/2uOY7ljCuIeEliuZuVeLov0INwVcsF0byEEdYSzO0KUPJrMQeaYCUEOXQGzt2vOkZ6TZ1P5511Sm5nz1V/OEmwAUxK71z5Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787136034; c=relaxed/simple;
	bh=ukaI/ztW9DeXLJ+kjpe0X3eIhwAmHW21WTYpmCyXnhw=;
	h=To:Subject:From:Message-Id:Date; b=M5AyANfkfUCksR0e5gyLIifDxtOm5rhETAVBeMcRhvGG7m1h0utR5T2yOXfeI91UBpRZpI9Zy/33Q4pElj/Ft/vShgAOlIaLuB8nVkT2JSOwWodLyfDUBqrbjb3yEviSV6UkbyrPxtYX0RmnyIz0F3A3KJ0lLLSfW49iLSXlGbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=se/Wa9nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="se/Wa9nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48345C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787136034;
	bh=ukaI/ztW9DeXLJ+kjpe0X3eIhwAmHW21WTYpmCyXnhw=;
	h=To:Subject:From:Date:From;
	b=se/Wa9nkEQAcBwfoDooHvDvaF5OMZEMuZATkyCB3kkn4o5jCQBYylIGAn59ZBt3VP
	 Q//64zJqpHWA4PTqm4t3T4sCy2T6k7zM6kqk51S4Zn2rL95LmaxPIkRVzgTDmy24YV
	 kCfmZj1PBUrfKXT1jLkyXATCbwSF3NTVuMS6EPpHxmYD6w7E2ivjOpwk1Fh5jgHa97
	 //Q3KstyZ0NLGkDI18H/ooW3MWwFhouCrWCpS7pfZPxIJU/enYoiznlinJ8Aztio5I
	 sDM8w6f8ao7rWyctjHGf+9d7LmQ9PLUxv84oavgV+3DXvMsIKyZvcGnWtKzQvCmby8
	 6TwMrlTRLc53Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2808C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178713603375.7797.10681540207068409530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc16d0993d3731419bb326b4d38e7e0e8641196ec22ac47118d2e504b0e12e7
Date: Wed, 19 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787136033
