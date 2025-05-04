Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACCB224CC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746326994; cv=none; b=qv2PDZqp0jy2pN1Fy2UfhWNCNcWt4VA/PSEApepSjWA+NDJzJWwya6t40VQlU5lzVwfLmZ5F9lkSHqyKzauyp7jU3aOEBGTYlUW+qVdfJNIazzJ4NZFrGfQ7BWBBpZWR8u1Ia6KoYsjpDY9AOHxZBWRIgEfImX+qO7CHdjVLc/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746326994; c=relaxed/simple;
	bh=f73soernEx9HHj2NrK7MsTB2Wn44KACac0idSMchp3Y=;
	h=To:Subject:From:Message-Id:Date; b=C4zJ7M6oqg/vM+tINlIAAlsJDfYeF9t6ff3/xSULYP7V9y5yqsQRWsodbcTr5JpiyzJbt8EWMmc4sHmrsTzDQdvxJA+ClJjlUnHRjmlwA8iCWJVrLROLX7bP/R457/iG1f08wq4gG1jZ0oMkdb5yVvx+yaZUX37ChXSWpavMd/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ec2N7kS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ec2N7kS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AE8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746326993;
	bh=f73soernEx9HHj2NrK7MsTB2Wn44KACac0idSMchp3Y=;
	h=To:Subject:From:Date:From;
	b=ec2N7kS7F+MbM+fa3M0YblACRTCxsLSJuruIKnTulqrOI/g6MQCcA0tJiyNLDDnmS
	 3mPHKwAN8aXuaqnh60kc8b/i74nC/TU0WVfgnwoJhkIwRG8KztphVqqD1IbVUX9PY6
	 5V9prSgGEfQS0fS5pmnlFmaZ07iWzE/NfRH/4qq/w0HV6owvhuWkI9LHJfSXgU9WUQ
	 Qag3yL9O8VsnnkVFcdOfNArutPFL3ZjxAKmFhM93mb/D8JqMPbeki0mYeXXhYdcLIu
	 Ca/dueyCurHZsn0eFvRcUC1sfszUuNHOT+UuCPQLJ6Ns+BGdfRGF69LB7AO2P0tiBl
	 WmWxHUlPA9PxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930AEC369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632699357.24305.1488730539336260888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe0b80a35b685e5d20f3c543a7ceaed4004e7343f5b09a56de9fc145f4430d0
Date: Sun, 04 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746326993
