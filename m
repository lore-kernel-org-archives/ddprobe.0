Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198B82F4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757639994; cv=none; b=S+QBVDbK2xbbhJBHiSu8rpqwVXr6AEfme1Ur/ngsdzU6r21N5Sblj8KqcS2FP5OQ21AboBIg5CfaaRNPAJDafRoaWp4b91Qp/1PHKxR4KYlHrzQcP50Yu/KY9YFYyxKll7Ulxh21JoQAcrJso1NB6dq+A2luEMutazWDlHTGQnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757639994; c=relaxed/simple;
	bh=allW6/llcXpmybywb5jCbTYVxkl0qkp7nSJfHqG6sfc=;
	h=To:Subject:From:Message-Id:Date; b=t+LGprUTBQW+avmH+ky/Dc+3RBoZ0hdYI6zZ9IpayfgLKrrBNgzTl18Tn1LUTspBtU9Fvtgq0Mf1+RH/Uyz9TyYtKAVlHt/sC8wFCrctYbj3Eaxvxe8rSyzEqFKh3Fz4dLj3zs/3UbSBK4+3IJ4fJcU6JfPDtRT0go/G0mf3Xx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AazRrBYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AazRrBYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72AFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757639993;
	bh=allW6/llcXpmybywb5jCbTYVxkl0qkp7nSJfHqG6sfc=;
	h=To:Subject:From:Date:From;
	b=AazRrBYoBZfVkrnVuM2F/tAL9EIViA8Y95xrnhNKgV/E9MdfFxFs0z/hJxI0gknXf
	 3Q1TNfopD+mvoZvvb2ifRR0rSISI+HoY+QJBKIepDgPVUk0I4DALVCQ3J/aU3spgSd
	 aVXu38y4vmMU65azZR6mM971xD6Q/KA/f36I05iDL0KlkTBzKjrkZsBF4rVrJrH2nY
	 TXZ3NQmEZMMSCPHaa3oDPuuYciVMNi7g66a5XXuKoLwWgZ7oBsxEOAIme2Ad0FXJIf
	 9G1p2uV9teu9kH7NAXq2fGMVsvmlfMKB0iOmScGw8nlq21+f9RvcJu9IeW63R4Dhkq
	 NLG/bSCodukZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925CCCAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763999357.11908.49622953672159304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8d852e85f879d3a877255799b687d06e5fa0ddabc236407e1206881720e432
Date: Fri, 12 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757639993
