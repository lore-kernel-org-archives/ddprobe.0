Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1956482D94
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724910954; cv=none; b=F0yebnqCwcYBYRVZOBqeF2JFVXI6pnD1MVtXO78u/PUdyzbM6+a4uDDuSkQ7hvmaHFbgg004BK/EEwtxWb0j7zm4mXK0G+e+lnmyy8/43lK290mqZHui+i1ELEtWSsWBX7iOu3t27uR1agjPrL5lpJsgigemmByKhyAFFBp1DaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724910954; c=relaxed/simple;
	bh=8BUwfl7EQSI/uamm4CnCN4e16tykLqBVPO6yhS1gUhQ=;
	h=To:Subject:From:Message-Id:Date; b=ZorvsNYQCczNYlev7QGYk+t7zn5sYT1IyLfhFroSY6a9UfqxbWB+h13+cLQjBl6e3OQtMf1YTHg+NkFXe6pWNeKhL+vTvySH+tUM5RCh70p1PEycfAGpAkHwvRznJRovHxwiTqvsXbujt+yXyQyFQ7DpF3Yi6rwoImdfeARYXdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCQfaX1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCQfaX1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C0DC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724910953;
	bh=8BUwfl7EQSI/uamm4CnCN4e16tykLqBVPO6yhS1gUhQ=;
	h=To:Subject:From:Date:From;
	b=XCQfaX1+028iwyYZa/kPqjaXXYbNhf+Vnp7b7vSEslR08kwySC29To/nhaE7QrV1H
	 0s7RAXbAoNwyzEvBrvrua1LV9S0LQa5FRQvv1Y06yX4ZDXAw6m34SOXowyL9sk+afw
	 lIH2k/fOcvP0GnCxhZrYjMmmF+4A6ul9UzoA7SRAIMTAQl8ogyIq1S7LKs4TlRwAw1
	 uc3ye1PeaOpuYYRHMuJ6DO1dkwXHOkkBm8OjaUBLrZPjJBnJvfInbBBLbezYnaJsuX
	 V3hgI14iU/VIRFGsaEpnITlIFQN7oAud88xMOXPY3UuOOSfHfFV5L5M/bVqs3jn3F9
	 DLhiDgiV9lSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CEEC7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172491095359.10470.84769644560075868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c247d106e8950763a9fcc2be2bd85efdb45314d9d75a331f7d181ab8b677a76d
Date: Thu, 29 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724910953
