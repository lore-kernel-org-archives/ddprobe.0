Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205F235C6B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789368634; cv=none; b=nePQpqFpCVZCslqY8rJksWctNVK5wu4D4HqWbjtoZlPuABFfI8CFF1a/hiSfvzJVvX7xxOznIQaKwnxeGkS8hRD9rds4JXECqKue071UUPdD7hWqjhVBOloXhmYwunEbZb9GV5/n9bF3Q7l74fqBO4/9nN0pL6yxpsCO0qMNO0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789368634; c=relaxed/simple;
	bh=YZH6El5JNLOHnN3jCRanouwYg+5e7ny+3RHCj44utH8=;
	h=To:Subject:From:Message-Id:Date; b=Fs1q5D3QhwZGkNZVn7UKIHfqp0X5HI8wICRR9HR/frPHiTl3pcgeHvlsbQTpaRDB9d6NieH+9aX6ob0e5iR2QG/zNqTvAdDKUlCP9JeFqEp9CI7h4yA7GHmtAEiJQ5hWYPcRRHFlABO5bD52HM6seWBQVx2V3YVBrwiqN1cV9EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjuWkgJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjuWkgJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2881C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789368633;
	bh=YZH6El5JNLOHnN3jCRanouwYg+5e7ny+3RHCj44utH8=;
	h=To:Subject:From:Date:From;
	b=YjuWkgJWOJj4iQ6ZcU+0O3iLD0HrTdtc00D1M9oQaawnEPgCUqVucrnINLC7ctRNE
	 rNmIvhCCdzJ9ct92kwPt7Hs/kowe2ft+A4Glnh00fFylzcY3Es7SiX+gklkP49nVeo
	 jYFrJhqHBpOiz2VvouLIH9LTfbrC5roHz9T0wAg6I4b2NVXilGtS48Ba9FtBbom8Jp
	 YhMk+P9i7I4Q8U94rMs5Q8OIl3hEitNYMyUkDX4/FctmQHeBjEYNvwKd8OsdulohM9
	 SCH8EWkyoNdS3x9GONuM9tPp96mJvEQArPBxFBuueCfYk/Pz+r1k7D0z0ZCubzeMJ2
	 7LUNOIJWVKXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD8DC88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936863368.15218.17898797429767502954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9713243dbd43b5b47f04c8de8d0814fdf0190f30c7f4c66f176d08b46370ee
Date: Mon, 14 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789368633
