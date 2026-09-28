Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9D4ABBC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790595634; cv=none; b=f0p5vLlCLnYpoBZIZdLEiNG5qEedmH+pdL2RirIPVfwJ2YnwG7sW7zDmW7nhM2aPg4s9B4wgP6lvdL0lxThg3YvkdC42cBiuHs9Ppe/McTaKZNrKMeksFRdPp+1jMRsMW7/dOUQ1Qnm4uFYY6D0FyIF7/dbUSOi0rQyMZMLSneo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790595634; c=relaxed/simple;
	bh=DZJ2GRc2NJQ5+8/1DBUa58Hi2Y3tVC6+GvJ6ayu9BQY=;
	h=To:Subject:From:Message-Id:Date; b=XyO2JWbK1dbJ6wIfWTapshGrNzfayvP47gcLJmRBcDHXhl3/Q/WaWDqtdhiwaHwtGGY1DeuWKx2/EdVsu6Mgz5fhHGI/VPUS3ycZ97/5XJtKTmpHv5BO8F8kE33KWHvK/H5yX1Jvuv5Gzk16e/GSzftv9Mb2kugqMjrK+fvuwOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrJNI55d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrJNI55d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790595633;
	bh=DZJ2GRc2NJQ5+8/1DBUa58Hi2Y3tVC6+GvJ6ayu9BQY=;
	h=To:Subject:From:Date:From;
	b=WrJNI55d1/9SY4y4TZ7wBnLTaGzOScXuYlBRYWNEBCnzWJbFZjvMfSEeymyOOAUM7
	 fjONdeAhyEuc0wKmGUHyO4tvd/DLU1eGncCoDyP+1/nU1WYnRPYMWZNL6loo7sazVr
	 cHcXepCHuru7IA4YXHqh+GvYBwYZ/DZZMZ1PihAfpW2JO5gko7JQajmCfKTHypoBlX
	 EYtXZ5/D83arjZE52h1mXfFIJg/V1Cl6l8t9Lh+S629WCEGkuH10+6XN0MAcg59U41
	 eujTSBg8hYbTfIWGFTT1ZKNYtpUQEyVjyTG7veLK8jbSIxeSYepF38qstjz8KabVnf
	 TT7DGuZBsM1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC995CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059563369.22000.11075933671820042290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f39983bb14002165bd35e39d9961078c41ff31a398a6f604fcb86668afe5ae
Date: Mon, 28 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790595633
