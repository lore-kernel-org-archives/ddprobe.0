Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7E5224D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743064193; cv=none; b=LcKua42n9uqHWEpJVfNViwjddeWe3B6s85PsJ5WnGekAVTOU6HFtScnZqgQ+9hIFf5d5Zh/BrlFArClLiH8pS2Vw4l+b/Ch/uAB+yBN5Wt3XhzgXqTopnujUsI2lLXljOM3yadUeQYRNUxI1+BEIP8kHuXjXqwJdB7e8GfRhIFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743064193; c=relaxed/simple;
	bh=XOFgWaBBD7B10F7Z5kZ+LWAtZdppln59GyRWkX5yV1A=;
	h=To:Subject:From:Message-Id:Date; b=OFz75sNHG38wRj5d0ia5WtSNqO1Rkc9xFlvdjUh3hWmg7iohY5GwdxBfUO5OBpcCyTLRyKyOvs+95kSZyTA1lFGcJB7EVwPlCj46MdhMKm0hkMMP+aIh8PIzvu3K0Mb17e+fnh8p8FD6pJcFArWQsM8Hrff3WokGTC4/EMrFde4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzgDtCMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzgDtCMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CDBC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743064193;
	bh=XOFgWaBBD7B10F7Z5kZ+LWAtZdppln59GyRWkX5yV1A=;
	h=To:Subject:From:Date:From;
	b=FzgDtCMM9KL9iSDH+Y/QvTsqHRncYaYdmevyCyG94sOFxmg9qoNAGROhEHzqVISL/
	 sA7M2ntGVci/Q1+sCg/PxpHa7ESH3q3825OMTwoEKp1PAK3IwegEW3ttPQoQRkPUeN
	 WZlhhFnQpC7AnqGwUJ1NRjmciOj981i1UD8LZjNxfHP0kzl5J18oYop3flarCRKx4M
	 ybJ1BfC0VE6wxa7RJq0nzdeN/5wWSMsx/0PVPI8qTJQHME0gJubXKClXDCUw8uIn6Z
	 sOKeXSGWrXQjZfMuRpz5MTB/YO+fAWa76kM3nwk5ghh2A3Cb2sRkG++M7EoGURX/EF
	 twICflGaqUhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970EDC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306419360.7518.13784972371199644212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780d654fb7602679e46f4b119e2150e0815e49e0a046016dc9f07508337c1e79
Date: Thu, 27 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743064193
