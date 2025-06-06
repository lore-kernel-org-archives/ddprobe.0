Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A4253355
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749206394; cv=none; b=LLgrqfv51b7im2hb256NCiyYZDvxfySc2yqt8vJlvXsHdbEyJLauRay4MOyZvE+Y0UXTgeyxlfe7Atsc58SnwIq+7HkJ6J9yHNzPcGzQ2B4mn0CiX8lN2oOJIV2AWthkbrvIm5avhm+kYUcgLyFYX5jAApX/+5hq068dcGzEUOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749206394; c=relaxed/simple;
	bh=VZ4pzhVY4SJNgo34qa/OoOj9CnYo4gWwF6c3ClhR1ts=;
	h=To:Subject:From:Message-Id:Date; b=KHo8S8SCBZHrrgz9GqH1cyCit3rHdm9wO2RNbkAWuuVMCYgREYxoOkk+93zwe2Z0pIfjXG0zbsl5S7qkm6J4V0B8i9v1YHRIYa18E2bK1/lGp7ROCEFXQGmGlGK4nx+slCqQLhjHD3mwH9xfbaG/7BGpNsM9Jj4PiNoMFwmlZm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV10TqWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV10TqWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A819AC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749206393;
	bh=VZ4pzhVY4SJNgo34qa/OoOj9CnYo4gWwF6c3ClhR1ts=;
	h=To:Subject:From:Date:From;
	b=aV10TqWYZBuAs1KAqsiVzTCv5434rxIDMHlPmxtLjTcDgetYFLy+nxgKpSEJjbzzn
	 JB/jOm1zvfFBgRHyXNH7GqHPTJZR2+3pmFRzmXLAO6RTUgy69WPMhlGz5i3jExza3C
	 LFuhiPgmara1hz9NVdGBKg+UohrDBnWpJsYnfzNZW5orE4PYG6PragGq4Zt4m2IGij
	 GamF/wvYHi5Fybe8EazX6Y7rJW92DeXZxHzpfYA1W3icsf9a9DZEptz6nhECgmPIFP
	 2O3WGk59FLWx+3R2SshW8n/Fe7CPh8xbD6D6fqLMKVEiMlOmcuDpfsiXrrkMWnTUpn
	 aKbMsad4ExXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980DBC5B559
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920639358.20473.6157535894193940333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59775d747549ae27d60c6468f975705bdbefab131f0bc159a5d8ba728a0a9553
Date: Fri, 06 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749206393
