Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223E936D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736381754; cv=none; b=TovhIU8P6ALbbvMMp5a+juP45Sxb5LyBvWPF6H5DLpRp9qgVt7DT8OA/BXqOKjmQBG3pFpgwyqXCiLgxAXLKK8Z3d9ierSEem2TsYfvq26XuytnhH0LihlfT05U3oeKGwbfwFnVjVrU/r45ARWyrVL6D0JX7uC6r6CNbHX3zaMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736381754; c=relaxed/simple;
	bh=OezDqagHGC1KrcI6UXfFWBEF1c7I16rRVAY5MEQcyeI=;
	h=To:Subject:From:Message-Id:Date; b=dHcTai0RI04l9ho6+2PsCFbTJInN4llaI4lvnRpbkOjWvvaPU2d5udb3WFzUggSp2WHljSOuQnRid9GarkctjQ6alcLkgz8eteg6xLtua793bpc3k3T+k4aiPkDj+zIvIB3J1hoBnX4ec9lFwuDCTr0WjkhDZG3H/B8MlqOvfd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgs4bmIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgs4bmIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF36C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736381753;
	bh=OezDqagHGC1KrcI6UXfFWBEF1c7I16rRVAY5MEQcyeI=;
	h=To:Subject:From:Date:From;
	b=hgs4bmIxCjFeE96Yo5D5mBeABff+wfj8RsRLI43BdFQMsSA0grpAJDPj+7WhafHI9
	 sAjcuEG7iPNe6F1eNatQNjMkuadQbgeP3fzu81xko6QQKVV0OEib8CWxzOCD3W/2pi
	 o1SZWWjIgnZHo0x3Wt8weU1lVfFbQAhKI+8LBp5VpPpBAxkiPvNjTCMH6GTXkz0nM+
	 706yfrDShd4LdRwjF9EENac/MTjWWtS6J4Jra+ql0YzDqR0PmrHfBOd7RAtvyHg2m6
	 iK2f1iVfNhdydwzvHBsT5DQ0thI+raUkTPZKfIWavbpfIwke0VZg7LU2VT9u2v1YrG
	 wETeodQtKcFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8DE77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638175360.22288.10667454589138057147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4652e9cd800037e11201066e14efd1dfa9f367ae573800819c912915b7c119c
Date: Thu, 09 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736381753
