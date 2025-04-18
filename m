Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2062AEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744938595; cv=none; b=XpCw4WUdU18HScERlvZeC3mkGDCWTeTnVIJtqXQ+MTcFLuFcAw1dj9jC59EkYjx2Un3L6z9ty29dcbcd83BKYBL11IMKHNM2VdKHxePCwg6UncxLFpwlU+d9PaJ6jhCpi6piHLmFQW+r8HZ52OkTTGbMXadc+fk9yD7YY991CJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744938595; c=relaxed/simple;
	bh=eQLB7292zdq59f2SHKaR0rTtZbWrKMULwhi2/HF+jH0=;
	h=To:Subject:From:Message-Id:Date; b=Uhpz9BChxoMUsVzvOz7++4H/aFfzmQFWcnmF7uHizO2quKb7rbuF0YopbuFVwP/8nSqBagsce5t4dq0BgyZC88UxVyLb36PhJFw7LiJfcZRxNy3fNmLrgMDCD/oGeRVdxs5yOWctuD9dDyYt5UlmN3JCg7zCkvRU9i6/+knySLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5dnUVSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5dnUVSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8046C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744938593;
	bh=eQLB7292zdq59f2SHKaR0rTtZbWrKMULwhi2/HF+jH0=;
	h=To:Subject:From:Date:From;
	b=H5dnUVSdvf63I5WltaFnTfF/ca2GCy719X9eHZqTmyGu8mEn7L6nURiikwsENRbGl
	 QTPITOJjD9I654KZFQ8R9fJTMYb7kxwYQx77Yf9Wfa1WVzkIvofts0kC9jE+ltItGR
	 fGpOPQfn5NiG/KnrbsfFx2kjRwls/Ahj5odabaKfG8g0t20hu3oEuyyJ3qba0bBz8W
	 Mu4i60LQCYsremw5KMSKfoctE2eNopq2Oml9H2jhZUGCr8qvMjD9Pd6V5Aez4BI7T1
	 yw0BzL71Ky0oo77awgiERV9ZI0ftK4bT7cHyPirdqEJGUEZtv6QvPBj0HKaoislUrV
	 Mc7k1x/e1KPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90908C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493859358.24449.14683849006768132745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6490fa61436711ec4bec3d70b88e7c2ed24f307ac353b88d96a3215f6e117a
Date: Fri, 18 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744938593
