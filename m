Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213712D6639
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755692394; cv=none; b=utmHJYM0yfD1KbdRn9iGqqj25pFngI7NqIZKU5t03JB9EPCdD4w+AJGlZm4l/WBvrgX7zH4e+GYS+eQCCXQ+Dw71nvYfIme5dFY95SHVATjfot3NuOOm0saW4PnRSuKYsgX7SLP8tIY/qpLYnxUt55gZAegfLZ4igrJnWVutJLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755692394; c=relaxed/simple;
	bh=pLsYKgzZaweo636SlsmRwCvmHLOc9+h9rfVh4Cxl7Jc=;
	h=To:Subject:From:Message-Id:Date; b=Vh2GP6C9GrosyY/PqW4ZF87DK0VMZf10BHCYg+rUitUk40Q9L170u3qhgM1x5kOU0vzzKH2JSDQDT68SUp9hSspgdlMl5LxevuyDa8ecl/O6OWweW1pXGnRMSXN2PV8MeVk4f6zGvNhaVyqKjKgiG9QJNLzByG/qyD7pA7hV+6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CT9HWaBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CT9HWaBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0496C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755692393;
	bh=pLsYKgzZaweo636SlsmRwCvmHLOc9+h9rfVh4Cxl7Jc=;
	h=To:Subject:From:Date:From;
	b=CT9HWaBIiP11ZEdTQzQRS0pQEbMvOU17t6aQcOP3bjbrjN5lgvoa4C/hIZK+8HQPk
	 VTNpwD/rd28ZSzmgaE0qE4ROSFS/FwcAiykBF2+tbCCj7Aob+a/zpwBTO+NHPLvU7M
	 s2dAo1tE1USQNkVBdgQF0JhQ61xMPjm42SUw8P9kSKK/G+jNZuLUqKmpaTW24nKdZB
	 A5aUd4eU/rrCW2ISc9P9faInXOmT5UfYX5K29HoAoU0b04QHHwxMnNIUMQTXgz4OL7
	 V/wPpJo2VtCYx8NIEe1Dxm7xke7aqStDfX43l8SnDdTBZxsyuCo6maHcMLZ1vXyOJo
	 IUY+lC0FyTWJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EACA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569239357.31027.15967077165040337041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c583f0b451af10c662c7ac4a5cbae690003a0cc923ab7db3cdab7110905ada
Date: Wed, 20 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755692393
