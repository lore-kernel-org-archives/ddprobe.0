Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286963A1E6D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766689434; cv=none; b=GpMNOd2EtRxVv5mQ0LREgEn1oVsZMPRmP9jNHhhm/WZY7ByWqKCqNHgpudems6WTaETN3HNzP/HNNoKJHWH0SuH9KB00Iymx95HKsceU/f6gQ4xDEt2hsC6z0bOD8gcfgcDl3RHxvm+Co0INgSNeSfZgXUm2hcWy8MS2U0/bzBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766689434; c=relaxed/simple;
	bh=j7wSvCI+by8fU3rJyWUZ4ln+DkJQYHBtlzVXq1364Tg=;
	h=To:Subject:From:Message-Id:Date; b=EIbG48lMFGmuQ5oWGSn9O9sqM0iu3fZwjSHQXXn3GI4wnpjQd7rXTBxaBmCsXu9ddgBq123KcFNGLYKpB/qa/fvXmHufSY/DvUDojLWs8IOMmXQIxvUjRiCESLlF7Id3eS6oLoFM+jJ/D962fwE6Qjx651h4PS4Ya98+spE94M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grNta9qP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grNta9qP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6500C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766689433;
	bh=j7wSvCI+by8fU3rJyWUZ4ln+DkJQYHBtlzVXq1364Tg=;
	h=To:Subject:From:Date:From;
	b=grNta9qPZ2uuj7G7LPwWe+4BmWfSEVHthCSeyeQ1e85CqnQvQLGbcKAMgDFzDR1FQ
	 vgljqUF42AB941JwGL0msZAxaiuwjZYvOyUW6iRjebaVfVEubZMK73CnL/tueJV+DU
	 qhEWsF8SNIBYN0u0oqoQ7KtP1k50Wv96sWiENTXJ8rQP/O31Mc5imNI6eq95syTmfD
	 +dMLmh80tgDXz2xLIzjjtQFIxXtrrlrg199LfatuDUWZleSDPg1bEPddki/JYXR0Fw
	 ukJMZjqyjo17TRiLXq7AEEFDCus9BFlEw3WPptT3N3i66j6AP8uMR9QpwcRunuiWll
	 xHxkgRWwD5pPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C2CE7AD4A
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668943358.5897.2978743647374610325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c394256517a2b594414868be5df6182a2efa05b046dd0cc8e7453fcab5d830
Date: Thu, 25 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766689433
